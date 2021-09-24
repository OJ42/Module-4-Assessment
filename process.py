# read in the text file with our csv data
log_file = open("um-server-01.txt")

# define the function
def sales_reports(log_file):
    # loop through the file one line at a time
    for line in log_file:
        #remove the extra stuff at the end of the line
        line = line.rstrip()
        #take the first 3 letters of the line
        day = line[0:3]
        #conditional statement, if day is "Tue" then do the next indented line (changed to Mon) 
        if day == "Mon":
            #displays the line if the conditions are met
            print(line)

#call the function
sales_reports(log_file)

log_file = open("um-server-01.txt")
def over_ten(log_file):
    for line in log_file:  
        line = line.rstrip()
        inputs = line.split(':')
        inputs2 = int(line[16:18])
        if inputs2 > 10:
            print(line)

over_ten(log_file)