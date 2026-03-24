#!/bin/bash
# 每天 8:00 自动抓取新闻，更新网站数据
cd /root/.openclaw/workspace/ai-news-site
python3 update.py
# 可选：推送 Telegram 消息
# curl -X POST https://api.telegram.org/bot<TOKEN>/sendMessage -d "chat_id=<CHAT_ID>" -d "text='AI工具日报已更新'"
echo "更新完成 $(date)" >> log.txt