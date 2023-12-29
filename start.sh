if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Joelkb/DQ-JK-DEV.git /DQ-JK-DEV
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-JK-DEV
fi
cd /DQ-JK-DEV
pip3 install -U -r requirements.txt
echo "Starting DQ-JK-DEV...."
python3 bot.py
