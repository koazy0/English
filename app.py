"""
英语二 · 每日阅读 — Flask 后端
启动: python app.py
访问: http://localhost:8080
"""

import os, json, re, glob
from flask import Flask, render_template_string, jsonify, request, send_from_directory

BASE = os.path.dirname(os.path.abspath(__file__))
DOCS = os.path.join(BASE, 'docs')
DATA_FILE = os.path.join(BASE, 'data.json')

app = Flask(__name__)

# ─── data persistence ───
def load_data():
    if os.path.exists(DATA_FILE):
        with open(DATA_FILE, 'r', encoding='utf-8') as f:
            return json.load(f)
    return {"done": {}, "highlights": {}, "notes": {}}

def save_data(data):
    with open(DATA_FILE, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)

# ─── article index ───
def get_articles():
    files = sorted([os.path.basename(f) for f in glob.glob(os.path.join(DOCS, '*.md'))])
    result = []
    for fn in files:
        date = fn[:8]
        slug = fn[9:-3]
        # detect type from filename
        if re.search(r'text\d', fn):
            tp = '📖'
        elif any(k in fn for k in [
            'attention-is-all', 'gpt3', 'bert-pre', 'deep-residual',
            'scaling-laws', 'cybersecurity', 'diffusion-models', 'stochastic',
            'adversarial', 'federated', 'prompt-injection', 'zero-knowledge',
            'instructgpt', 'deepseek', 'membership-inference', 'chain-of-thought',
            'rlhf', 'ransomware', 'constitutional-ai', 'sora'
        ]):
            tp = '💻'
        else:
            tp = '📰'
        result.append({"fn": fn, "date": date, "slug": slug, "type": tp})
    return result

# ─── daily log ───
DAILY_LOG = os.path.join(BASE, 'daily.md')
def load_daily():
    if os.path.exists(DAILY_LOG):
        with open(DAILY_LOG, 'r', encoding='utf-8') as f:
            return f.read()
    return "# 每日阅读记录\n\n> 每天读完后在这里写几句感想，记录进度\n\n"

def save_daily(content):
    with open(DAILY_LOG, 'w', encoding='utf-8') as f:
        f.write(content)

# ═══════════════════════════════════════════
# API routes
# ═══════════════════════════════════════════

@app.route('/')
def index():
    return send_from_directory(BASE, 'index.html')

@app.route('/articles.js')
def articles_js():
    return send_from_directory(BASE, 'articles.js')

@app.route('/docs/<path:fn>')
def doc(fn):
    return send_from_directory(DOCS, fn)

@app.route('/api/articles')
def api_articles():
    return jsonify(get_articles())

@app.route('/api/data')
def api_data():
    return jsonify(load_data())

@app.route('/api/data', methods=['POST'])
def api_save():
    data = load_data()
    update = request.json or {}
    if 'done' in update:
        data['done'] = update['done']
    if 'highlights' in update:
        data['highlights'] = update['highlights']
    if 'notes' in update:
        data['notes'] = update['notes']
    save_data(data)
    return jsonify({"ok": True})

@app.route('/api/daily')
def api_daily():
    return jsonify({"content": load_daily()})

@app.route('/api/daily', methods=['POST'])
def api_daily_save():
    save_daily(request.json.get('content', ''))
    return jsonify({"ok": True})

# ═══════════════════════════════════════════
# Run
# ═══════════════════════════════════════════
if __name__ == '__main__':
    print("📖 英语二 · 每日阅读")
    print("   访问 http://localhost:8080")
    app.run(host='0.0.0.0', port=8080, debug=False)
