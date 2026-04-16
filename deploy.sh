#!/bin/bash
# GitHub Pages 部署脚本

# 设置变量
REPO_NAME="ai-tools-nav"
GIT_USER="your-github-username"  # 请替换为你的GitHub用户名

echo "=========================================="
echo "AI工具导航站 - GitHub Pages 部署脚本"
echo "=========================================="

# 进入public目录
cd "$(dirname "$0")/public"

# 初始化Git（如果还没有）
if [ ! -d ".git" ]; then
    git init
    git checkout -b gh-pages
fi

# 添加所有文件
git add .

# 提交
git commit -m "Update: $(date '+%Y-%m-%d %H:%M:%S')"

# 添加远程仓库（如果还没有）
if ! git remote -v | grep -q origin; then
    git remote add origin "https://github.com/${GIT_USER}/${REPO_NAME}.git"
fi

# 推送到GitHub
echo ""
echo "正在推送到 GitHub Pages..."
git push -f origin gh-pages

echo ""
echo "=========================================="
echo "部署完成！"
echo "你的站点将在几分钟内可在以下地址访问："
echo "https://${GIT_USER}.github.io/${REPO_NAME}/"
echo "=========================================="
