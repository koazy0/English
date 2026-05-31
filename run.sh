#!/bin/bash
# 英语二 · 每日阅读 Flask 启动脚本

cd "$(dirname "$0")"

APP_NAME="eng-reader"
APP_SCRIPT="app.py"
PID_FILE="./${APP_NAME}.pid"
LOG_FILE="./logs/${APP_NAME}.log"
HOST="0.0.0.0"
PORT=25000

# 确保日志目录存在
mkdir -p logs

stop() {
  if [ -f "$PID_FILE" ]; then
    OLD_PID=$(cat "$PID_FILE")
    if kill -0 "$OLD_PID" 2>/dev/null; then
      echo "停止旧进程 PID=$OLD_PID ..."
      kill "$OLD_PID" 2>/dev/null
      # 等待进程退出，最多5秒
      for i in $(seq 1 10); do
        if ! kill -0 "$OLD_PID" 2>/dev/null; then
          break
        fi
        sleep 0.5
      done
      # 还没退就强杀
      if kill -0 "$OLD_PID" 2>/dev/null; then
        kill -9 "$OLD_PID" 2>/dev/null
      fi
    fi
    rm -f "$PID_FILE"
  fi
  # 兜底：按端口杀
  PID_BY_PORT=$(lsof -t -i:${PORT} 2>/dev/null)
  if [ -n "$PID_BY_PORT" ]; then
    echo "端口 ${PORT} 仍有进程占用，正在终止..."
    kill $PID_BY_PORT 2>/dev/null
  fi
}

check_deps() {
  if ! command -v python3 &>/dev/null; then
    echo "❌ 未找到 python3"
    exit 1
  fi
  if ! python3 -c "import flask" 2>/dev/null; then
    echo "安装依赖 flask ..."
    pip install flask --break-system-packages --ignore-installed blinker 2>&1 | tail -2
  fi
}

start() {
  stop
  check_deps
  echo "启动 $APP_NAME → http://${HOST}:${PORT}"
  nohup python3 "$APP_SCRIPT" > "$LOG_FILE" 2>&1 &
  echo $! > "$PID_FILE"
  sleep 2
  if kill -0 $(cat "$PID_FILE") 2>/dev/null; then
    echo "✅ 启动成功 PID=$(cat $PID_FILE)"
    echo "   访问: http://localhost:${PORT}"
    echo "   日志: tail -f $LOG_FILE"
  else
    echo "❌ 启动失败，查看日志: cat $LOG_FILE"
    exit 1
  fi
}

restart() {
  start
}

status() {
  if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if kill -0 "$PID" 2>/dev/null; then
      echo "运行中 PID=$PID → http://localhost:${PORT}"
      return 0
    fi
  fi
  # 按端口查
  PID_BY_PORT=$(lsof -t -i:${PORT} 2>/dev/null)
  if [ -n "$PID_BY_PORT" ]; then
    echo "运行中 PID=$PID_BY_PORT (端口 ${PORT})"
    return 0
  fi
  echo "未运行"
  return 1
}

logs() {
  if [ -f "$LOG_FILE" ]; then
    tail -f "$LOG_FILE"
  else
    echo "暂无日志"
  fi
}

case "${1:-start}" in
  start)   start   ;;
  stop)    stop    ;;
  restart) restart ;;
  status)  status  ;;
  logs)    logs    ;;
  *)
    echo "用法: $0 {start|stop|restart|status|logs}"
    echo ""
    echo "  start    检查依赖并启动（默认）"
    echo "  stop     停止进程"
    echo "  restart  重启"
    echo "  status   查看运行状态"
    echo "  logs     查看实时日志"
    ;;
esac
