@echo off #This will turn off output screen
echo "Script will wait 3 second to check additional functionalities"
timeout 3 >nul
pip install virtualenv
python -m venv env
cd env/Scripts
call activate.bat
cd..
cd..
cd logging
python setup.py install
cd..
cd code
python -m pip install --upgrade pip
pip3 install -r requirements.txt
echo "Script is running do not close the application"
python main.py
timeout 5 >nul