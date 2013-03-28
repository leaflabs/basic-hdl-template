#!/usr/bin/python
'''
Program reads from stdin and color asked substrings.

Example usage:
make all 2>&1 | colorize.py green CC red warning
cat /etc/fstab | colorize.py red defaults 

Author: Aapo Rantalainen
License: GPL3+

Design:
If user gives keyword which is substring of another keyword
e.g Input contains 123456
 * '2345' and '34'
 *  '345' and '34'
 -> '34' triggers
 (because when '4' is read '34' is only completed keyword)

 *'34' and '234'.
-> 234 triggers, because it is lengthiest keyword


*If you are looking for many words (spacebar between), use:
 colorize.py red 'file system'

'''
import sys

#easy words for colors
colorcodes = {
  'black' : '\033[30m',
  'red' : '\033[31m',
  'green' : '\033[32m',
  'yellow' : '\033[33m',
  'blue' : '\033[34m',
  'magenta' : '\033[35m',
  'cyan' : '\033[36m',
  'white' : '\033[37m' }

#Reset all attributes
ENDC = '\033[0m'

#empty dictionary:
colorbook = {}
       
#usage: print colors
if len(sys.argv) >= 2:
  if sys.argv[1] == '--help':
     print "Usage: "+sys.argv[0]+" color keyword color keyword"
     print "\nColors in use:"
     for k, v in colorcodes.iteritems():
         print v+k+ENDC 
     sys.exit("")

#There must be even number of parameters  
if len(sys.argv)%2 == 0:
  sys.exit(sys.argv[0]+": Must provide even numbers of parameters")
  
#first parameter is the name of application.
for i in range(1,len(sys.argv),2):
  color = sys.argv[i]
  if color in colorcodes:
     keyword = sys.argv[i+1]
     asked_color = colorcodes[color]
     colorbook[keyword]= asked_color
  else:
     sys.exit(sys.argv[0]+": Can't understand color: "+color)


#Read from STDIN (read one line, process it and read next)
for line in iter(sys.stdin.readline, ""):
    start=0

    #scroll
    for end in range(0,len(line)):
       current_word = line[start:end]

       candidate_word = [] #empty list
       for keyword, v in colorbook.iteritems():
         if keyword in current_word:
           candidate_word.append(keyword)

       #use lengthiest keyword, if any
       if len(candidate_word) is not 0:
          max_length=0
          selected_word=""
          for ii in candidate_word:
            if len(ii) > max_length:
              selected_word=ii
              max_length = len(ii)

          #selected_word=candidate_word[0]
          color = colorbook[selected_word]
          #print "color", color
          current_word = current_word.replace(selected_word, color+selected_word+ENDC)
          #print current_word,
          sys.stdout.write(current_word)
          start=end
          current_word="" #because if we just read last character from the row, it will be printed again


    print current_word

