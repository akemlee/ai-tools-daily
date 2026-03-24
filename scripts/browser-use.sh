#!/bin/bash
echo "Browser‑Use 自动化脚本示例"
echo "此脚本可自动登录 Canva、Adobe Stock 等平台上传作品。"

echo "1. 安装 Browser‑Use"
npm install browser-use

echo "2. 配置平台账号"
echo "填写你的 Canva、Adobe Stock 账号"

echo "3. 运行上传脚本"
browser-use login-canva --username YOUR_USERNAME --password YOUR_PASSWORD
browser-use upload-design --file my-artwork.jpg

echo "完成！作品已上传，销售收入将在 7 天内开始计算。"