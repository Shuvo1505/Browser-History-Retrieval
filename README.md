# 1. Prerequisites
- Ensure you have SQLite installed on Windows. [Download SQLite](https://www.sqlite.org/download.html)
- Install Python. [Download Python](https://www.python.org/downloads/)
- Make sure browsers are installed in the default directory.
- Update the SQLite path in the script: check line 25 of `initiate-fetch-history.bat`.

# 2. Required Python Libraries
- `pandas`
- `argparse`

# 3. Installing Required Libraries
Install all necessary libraries from the `requirements.txt` file:
```bash
pip install -r requirements.txt
```
# 4. Generating the "history.txt" File (e.g., chrome_history.txt)
- Run the initiate-fetch-history.bat file.
- Select your browser (e.g., press "1" for Google Chrome).
- Success: Your history.txt file is ready!

# 5. Converting to Excel
Convert the raw history text file into an Excel file by running:
```bash
python convert.py <input-file> <output-file>
```
For additional options, use: `python convert.py -h`

# 6. Key Features
- Detailed browsing history view (URL, timestamp, etc.)
- Easy to operate.

# 7. Important Notes
- Available for Windows only.
- Supported browsers: Google Chrome, Brave, Opera.
- Future updates will expand browser support.

# 8. Screenshots
![demo_show](https://github.com/user-attachments/assets/4cecb9df-b119-4bf3-97f0-adfa716802dd) ![demo_files](https://github.com/user-attachments/assets/0d3acc23-af19-493c-8494-49276e3a3b7d)
