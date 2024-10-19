#!/bin/bash

cleanup_list_file="./cleanup-files"
cleanup_directory="."
move_artifacts=1
cleaned_counts=0

if [[ -n "$1" ]]; then
    if [[ "$1" != "--no-move" ]]; then
        cleanup_directory="$1"
    else
        move_artifacts=0
    fi
fi

if [[ -n "$2" ]]; then
    if [[ "$2" != "--no-move" ]]; then
        cleanup_directory="$2"
    else
        move_artifacts=0
    fi
fi

echo "SCRIPT: CLEANUP"
echo "Cleaning up build generated files from '$cleanup_list_file'."
echo "Directory: $cleanup_directory"
echo

while IFS= read -r token; do
    rm -fv $cleanup_directory/$token
done < $cleanup_list_file

if [[ $move_artifacts -eq 1 ]]; then
    echo
    echo "Moving all generated artifacts to the root directory."
    echo

    mv -fv $cleanup_directory/*.pdf .
fi

echo
echo "Cleaned up after build."
echo "Done."
