#!/bin/bash

git_add="git add"
for((i=1;i<$#;i++)); do
	j=${!i}
	git_add="${git_add} $j"
done
git_add_commit="${git_add}"" && git commit -m \""
git_add_commit_push="${git_add_commit}${@: -1}\" && git push"
eval ${git_add_commit_push}
