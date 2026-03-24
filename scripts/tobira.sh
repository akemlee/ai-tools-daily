#!/bin/bash
echo "Tobira.ai 自动化脚本示例"
echo "此脚本可自动剪辑视频，上传到 TikTok 和 YouTube。"

echo "1. 安装 Tobira.ai"
pip install tobira-ai

echo "2. 配置社交媒体账号"
echo "填写你的 TikTok、YouTube 账号"

echo "3. 生成视频"
tobira generate-video --theme "AI Tools" --duration 60

echo "4. 发布视频"
python3 upload_tiktok.py --video output.mp4 --title "AI Tools Review"

echo "完成！视频已发布，广告分成将在 24 小时内开始计算。"