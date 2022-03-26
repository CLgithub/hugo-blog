#!/bin/sh

hugo -D

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# 切换到 Public 文件夹
cd Clgithub.github.io

# 添加更改到 git
git add .

# 提交更改
msg="rebuilding site $(date)"
git commit -m "$msg"

# 推送到远程仓库
git push origin master
