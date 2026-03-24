#!/bin/bash
echo "Deer‑Flow 自动化变现脚本示例"
echo "此脚本可自动撰写技术博客，优化 SEO，发布到 Medium 获取订阅收入。"

echo "1. 安装 Deer‑Flow"
pip install deer-flow

echo "2. 配置 OpenAI API 密钥"
echo "填写你的 OpenAI API 密钥"

echo "3. 生成技术博客"
deer-flow generate --topic "AI Agent framework" --length 2000

echo "4. 发布到 Medium"
python3 publish_medium.py --title "Deer‑Flow 实战指南" --content generated_blog.txt

echo "完成！博客已发布，订阅收入将在 7 天内开始计算。"