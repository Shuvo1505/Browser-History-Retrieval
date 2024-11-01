# 1. Purpose of this tool
  This will Help You to Retrieve and View Browser History Independently (Without Browser's Interaction)
  
# 2. Getting Started
- You must have sqlite toolkit for windows (https://www.sqlite.org/download.html)
- You need to install python (https://www.python.org/downloads/)
- Browsers must be installed in the default installation directory
- You need to change sqlite path first. Please check the line number 25 of "initiate-fetch-history.bat"

# 3. Required Python Libraries
- pandas
- argparse

# 4. How to install
- pip install -r requirements.txt

# 5. How to generate "history.txt" file (For example: chrome_history.txt)
1. Run the "initiate-fetch-history.bat" file
2. Choose your browser
- Congratulations, You've successfully created your history.txt file!

# 6. How to convert the raw text file into an excel file
- python convert.py <input-file> <output-file>
- You can use "python convert.py -h" command to know more

# 7. Features
- Detail view of your history (including url, timestamp etc.)
- Easy to operate

# 8. Things you need to know
- Only available for windows
- Supported browsers are Google Chrome, Brave Browser, Opera Browser
- Support for additional browsers will be available in future updates

# 9. Screenshots

![demo_show](https://github.com/user-attachments/assets/4cecb9df-b119-4bf3-97f0-adfa716802dd) ![demo_files](https://github.com/user-attachments/assets/0d3acc23-af19-493c-8494-49276e3a3b7d)
