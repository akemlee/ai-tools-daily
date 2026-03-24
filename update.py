#!/usr/bin/env python3
"""
自动抓取 GitHub Trending 和 Product Hunt 数据，生成 JSON 数据文件供网站使用。
"""
import json
import os
import sys
sys.path.append('/root/.openclaw/workspace/skills/news-aggregator-skill')
from scripts.fetch_news import fetch_github, fetch_producthunt

def fetch_data():
    github_items = fetch_github(limit=5)
    producthunt_items = fetch_producthunt(limit=3)
    items = github_items + producthunt_items
    # 简化数据结构
    simplified = []
    for item in items:
        simplified.append({
            'title': item['title'],
            'url': item['url'],
            'source': item['source'],
            'heat': item['heat'],
            'time': item['time'],
            'summary': item.get('summary', '')
        })
    return simplified

def save_json(data):
    with open('/root/.openclaw/workspace/ai-news-site/data/news.json', 'w') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)

def update_html():
    # 读取 index.html，在新闻列表部分动态插入数据
    # 这里只是一个示例，实际可替换成模板引擎
    pass

if __name__ == '__main__':
    data = fetch_data()
    save_json(data)
    print(f'抓取了 {len(data)} 条数据，保存到 news.json')
    # 更新 HTML
    # update_html()