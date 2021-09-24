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

log_file = open("um-server-01.txt") # read file in
def over_ten(log_file): #define new function
    print("") #print a blank line to seperate from the previous function
    for line in log_file: #loop through the opened file 
        line = line.rstrip() #remove extra spacing from line
        inputs = line.split(':') #split the file at the :
        inputs2 = int(line[16:18]) #read in the characters at spot 16-18 convert to ints
        if inputs2 > 10: #if the ints from 16-18 are greater then 10 perfrom the next line
            print(line) #print the line if conditions are met

over_ten(log_file) #call the function