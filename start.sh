if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SadKidBGMZ/bgm_auto_filter_bot.git /bgm_auto_filter_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /bgm_auto_filter_bot
fi
cd /bgm_auto_filter_bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
