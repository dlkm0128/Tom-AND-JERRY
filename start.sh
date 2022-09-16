if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/crazyspiderat3/Tom-AND-JERRY .git /TOM-AND-JERRY-Donor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Tom-AND-JERRY
fi
cd /Tom-AND-JERRY
pip3 install -U -r requirements.txt
echo "Starting Tom-AND-JERRY...."
python3 bot.py
