#!/usr/bin/env bash

getProjectName() {
    basename "$(git rev-parse --show-toplevel)"
}

createWorktreeCustom() {
    local type="$1"
    local worktreeName="$2"
    local branchPrefix="$3"
    local branchName="$4"

    local projectName="$(getProjectName)"
    local worktreeBasePath="../${projectName}.worktrees"
    local worktreeDirPath="${worktreeBasePath}/${worktreeName}"
    local branchNameFinal="${branchPrefix}${branchName}"


    if [ ! -d "$worktreeBasePath" ]; then
        mkdir -p "$worktreeBasePath"
    fi

    if [ "$type" = "new" ]; then
        git worktree add "$worktreeDirPath" -b "$branchNameFinal"
    else
        git worktree add "$worktreeDirPath" "$branchNameFinal"
    fi

    # Check for worktree-file to copy some folders or files
    # File format should be list of files/directories separated by newlines
    local projectDir="$(git rev-parse --show-toplevel)"
    local worktreeFiles=("worktree.lzg" "worktree.lazygit" "worktree.local.lzg" "worktree.local.lazygit")
    local -a sourcesToCopy

    for file in "${worktreeFiles[@]}"; do
        if [[ -f "$projectDir/$file" ]]; then
            while IFS= read -r line; do
                sourcesToCopy+=("$line")
            done < "$projectDir/$file"
            break;
        fi
    done

    for file in "${sourcesToCopy[@]}"; do
        if [[ -e "$projectDir/$file" ]]; then
            cp -r "$projectDir/$file" "$worktreeDirPath/$file"
        fi
    done
}

createBranch() {
    local mode="$1"
    local branchName="$2"

    if [ "$mode" = "switch" ]; then
        git switch -c "$branchName"
    else
        git branch "$branchName"
    fi
}

createBranchCustom() {
    local mode="$1"
    local branchPrefixType="$2"
    local branchName="$3"

    local -A prefixMap=(
        ["dev"]="dev/"
        ["release"]="release/"
    )

    case $branchPrefixType in
        "dev" | "release")
            createBranch "$mode" "${prefixMap[$branchPrefixType]}${branchName}"
            ;;
        "both")
            createBranch "create" "${prefixMap[release]}${branchName}"
            createBranch "$mode" "${prefixMap[dev]}${branchName}"
            ;;
        *) ;;
    esac
}

copyTaskName() {
    local branchName="$1"
    local task="${branchName##*/}"

    if command -v wl-copy >/dev/null 2>&1; then
        echo -n "$task" | wl-copy  >/dev/null 2>&1
        echo "Copied: $task"
    elif command -v pbcopy >/dev/null 2>&1; then
        echo -n "$task" | pbcopy
        echo "Copied: $task"
    fi
}
