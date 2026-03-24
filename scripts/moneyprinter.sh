#!/bin/bash
echo "MoneyPrinterV2 自动化变现脚本示例"
echo "此脚本可自动抓取热门内容，生成视频，上传到 YouTube 并获取广告分成。"

echo "1. 克隆 MoneyPrinterV2 仓库"
git clone https://github.com/FujiwaraChoki/MoneyPrinterV2
cd MoneyPrinterV2

echo "2. 配置 YouTube API"
echo "请填写你的 YouTube API 密钥和频道 ID"

echo "3. 运行自动化脚本"
python3 generate_video.py --topic "AI tools" --length 10

echo "4. 上传视频"
python3 upload_video.py --title "AI Tools Review" --description "自动生成的 AI 工具介绍视频"

echo "完成！视频已上传，广告分成将在 24 小时内开始计算。"