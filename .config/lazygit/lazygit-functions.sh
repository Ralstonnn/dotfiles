projectname() {
    basename "$(git rev-parse --show-toplevel)"
}

copyTaskName() {
    task=$(git branch --show-current | awk -F/ '{print $NF}')

    if command -v wl-copy >/dev/null 2>&1; then
        echo -n "$task" | wl-copy  >/dev/null 2>&1
        echo "Copied: $task"
    elif command -v pbcopy >/dev/null 2>&1; then
        echo -n "$task" | pbcopy
        echo "Copied: $task"
    fi
}
