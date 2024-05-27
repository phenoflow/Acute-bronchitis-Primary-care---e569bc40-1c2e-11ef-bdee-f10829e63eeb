# Eleftheria Vasileiou, Chukwuma Iwundu, Alex Williams, Clare MacRae, 2024.

import sys, csv, re

codes = [{"code":"H060v","system":"ctv3"},{"code":"H060x","system":"ctv3"},{"code":"301121011","system":"ctv3"},{"code":"301119018","system":"ctv3"},{"code":"H060v00","system":"ctv3"},{"code":"H060x00","system":"ctv3"},{"code":"H060v","system":"ctv3"},{"code":"H060x","system":"ctv3"},{"code":"301119018","system":"ctv3"},{"code":"301121011","system":"ctv3"},{"code":"H060x00","system":"ctv3"},{"code":"H060v00","system":"ctv3"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('acute-bronchitis-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["acute-bronchitis-primary-care-specified---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["acute-bronchitis-primary-care-specified---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["acute-bronchitis-primary-care-specified---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
