# Getting Started
- You must have sqlite toolkit for windows (https://www.sqlite.org/download.html)
- You need to install python (https://www.python.org/downloads/)
- Browsers must be installed in the default installation directory

# Required Python Libraries
- pandas
- argparse

# How to install
- pip install -r requirements.txt

# How to generate "<browser-name>_history.txt" file (For example: chrome_history.txt)
1. Run the "initiate-fetch-history.bat" file
2. Choose your browser
- Congratulations, You've successfully created your <browser-name>_history.txt file!

# How to convert the raw text file into an excel file
- python convert.py <input-file> <output-file>
- You can use "python convert.py -h" command to know more

# Features
- Detail view of your history (including url, timestamp etc.)
- Easy to operate

# Things you need to know
- Only available for windows
- Supported browsers are Google Chrome, Brave Browser, Opera Browser
- Support for additional browsers will be available in future updates
