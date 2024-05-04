import csv

def transform_csv(original_file, transformed_file):
    with open(original_file, 'r', newline='', encoding='utf-8') as csv_input:
        reader = csv.reader(csv_input)
        with open(transformed_file, 'w', newline='', encoding='utf-8') as csv_output:
            writer = csv.writer(csv_output)
            for row in reader:
                transformed_row = []
                for item in row:
                    if item.strip() == "":
                        transformed_row.append("NULL")
                    elif item.replace(".", "", 1).isdigit():
                        transformed_row.append(item)
                    else:
                        transformed_row.append(f'"{item}"')
                writer.writerow(transformed_row)

# Example usage:
original_file = 'Youth_Tobacco_Survey__YTS__Data.csv'
transformed_file = 'transformed_data.csv'
transform_csv(original_file, transformed_file)


