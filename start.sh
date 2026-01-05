if [ -z "$UPSTREAM_REPO" ]; then
  echo "Starting Bot..."
  python3 bot.py
else
  echo "Upstream Repo Detected, but skipping clone to avoid errors..."
  python3 bot.py
fi

