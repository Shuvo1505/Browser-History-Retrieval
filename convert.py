import pandas as pd
import argparse

def convert_history_to_excel(input_file, output_file):
    # Read the input file
    with open(input_file, 'r', encoding='utf-8', errors='ignore') as file:
        data = file.readlines()
    
    # Process the data
    records = []
    for line in data:
        parts = line.strip().split('|')
        if len(parts) == 4:
            records.append({
                'URL': parts[0].strip(),
                'Source': parts[1].strip(),
                'Count': int(parts[2].strip()),
                'Timestamp': parts[3].strip()
            })

    # Create a DataFrame
    df = pd.DataFrame(records)

    # Write to Excel
    df.to_excel(output_file, index=False, engine='openpyxl')

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert history data to Excel format.")
    parser.add_argument("input_file", help="The path to the input file.")
    parser.add_argument("output_file", help="The path to the output Excel file.")
    args = parser.parse_args()

    convert_history_to_excel(args.input_file, args.output_file)
    print(" ")
    print(f"Your {args.output_file} has been generated successfully!")
