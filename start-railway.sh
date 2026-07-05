#!/usr/bin/env bash
set -e

# ریلوی پورت رو توی $PORT میده، پاسارگارد اسم UVICORN_PORT رو می‌خواد
export UVICORN_HOST="0.0.0.0"
export UVICORN_PORT="${PORT:-8000}"

# اگه دیتابیس خارجی ست نشده بود، sqlite پیش‌فرض
export SQLALCHEMY_DATABASE_URL="${SQLALCHEMY_DATABASE_URL:-sqlite+aiosqlite:///db.sqlite3}"
export ROLE="${ROLE:-all-in-one}"

echo "Starting PasarGuard panel on port ${UVICORN_PORT}..."
exec /code/start.sh
