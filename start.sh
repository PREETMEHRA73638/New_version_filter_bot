if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PREETMEHRA73638/New_version_filter_bot.git /Auto-search-tamil-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /New_version_filter_bot
fi
cd /New_version_filter_bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
