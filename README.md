# AI工具导航站

使用 Hugo 构建的 AI 工具导航网站。

## 快速开始

```bash
# 本地开发
hugo server

# 构建生产版本
hugo
```

## 部署

部署到 GitHub Pages：

1. 修改 `deploy.sh` 中的 `GIT_USER` 为你的 GitHub 用户名
2. 运行 `./deploy.sh`

## 目录结构

```
ai-tools-nav/
├── content/
│   ├── categories/   # 分类页面
│   ├── tools/        # 工具详情页
│   ├── _index.md     # 首页内容
│   └── about.md      # 关于我们
├── themes/basic/      # 自定义主题
├── static/           # 静态文件
└── public/           # 构建输出目录
```

## 工具分类

- ✍️ 写作助手
- 🎨 AI绘画
- 🎬 视频制作
- 🎵 音频处理
- 💻 编程开发
- 📊 办公效率
