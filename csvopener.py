import secrets
import csv

# This program will open a csv file and then if there is a cutomerID missing it will add a new unique ID
op = open("csvtest.csv", "r")
dt = csv.DictReader(op)


up_dt = [] #Updated file

# for each row in the file preform this calculation
for r in dt:
    customerID = secrets.token_hex(4)
    #print(r['CustomerID'])

    if r['CustomerID'] == '':
    #,,,,,,       
        row = {'CustomerID': customerID,
            'Parent Name': r['Parent Name'],
            'Student Name': r['Student Name'],
            'Street': r['Street'],
            'City': r['City'],
            'Zipcode': r['Zipcode'],
            'Homephone': r['Homephone'],
            'workphone': r['workphone'],
            'School': r['School']}
        up_dt.append(row)
    else:
        up_dt.append(r)

print(up_dt)
op.close() # Close the file 

# Write a new file with the new lines
op = open("csvtest.csv", "w", newline='')
headers = ['CustomerID', 'Parent Name', 'Student Name', 'Street', 'City', 'Zipcode', 'Homephone', 'Zipcode', 'workphone','School']
data = csv.DictWriter(op, delimiter=',', fieldnames=headers)
data.writerow(dict((heads, heads) for heads in headers))
data.writerows(up_dt)
  
op.close
