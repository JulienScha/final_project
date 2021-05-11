
mkdir -p /web

echo "1"

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

echo "2"

python3 get-pip.py --user

echo "3"

python3 -m pip install Flask

echo "4"