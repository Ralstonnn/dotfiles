getProjectName() {
    basename "$(git rev-parse --show-toplevel)"
}

createWorktreeCustom() {
    local type="$1"
    local worktreeName="$2"
    local branchPrefix="$3"
    local branchName="$4"

    local projectName=$(getProjectName)
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
}

createBranchCustom() {
    local mode="$1"
    local branchPrefix="$2"
    local branchName="$3"

    local branchNameFinal="${branchPrefix}${branchName}"

    if [ "$mode" = "switch" ]; then
        git switch -c "$branchNameFinal"
    else
        git branch "$branchNameFinal"
    fi
}

copyTaskName() {
    local task=$(git branch --show-current | awk -F/ '{print $NF}')

    if command -v wl-copy >/dev/null 2>&1; then
        echo -n "$task" | wl-copy  >/dev/null 2>&1
        echo "Copied: $task"
    elif command -v pbcopy >/dev/null 2>&1; then
        echo -n "$task" | pbcopy
        echo "Copied: $task"
    fi
}
