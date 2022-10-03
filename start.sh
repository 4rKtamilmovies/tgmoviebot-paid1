if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/4rKtamilmovies/tgmoviebot-paid1.git /tgmoviebot-paid1                       
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tgmoviebot-paid1
fi
cd /tgmoviebot-paid1
pip install -U -r requirements.txt
echo "Starting Bot....⚡️⚡️"
python3 bot.py
