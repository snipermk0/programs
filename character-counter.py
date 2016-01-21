# Character counter

import pprint

message = '''This is a very simplton message.'''
count = {}

for i in message.upper():   # converts the string message to upper 
    count.setdefault(i, 0)  
    count[i] = count[i] + 1

pprint.pprint(count) # Pretty print from pretty print module
