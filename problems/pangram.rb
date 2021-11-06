# A Ruby Program to check if the given
# string is a pangram or not
 
def check_pangram(s)
  list = []
  # create list of 26 characters and set false each entry
  for i in 0..26
    list.append(False)
       
  # converting the sentence to lowercase and iterating
  # over the sentence
  for c in s.lower()
      if not c == " "

          # make the corresponding entry True
          List[ord(c) -ord('a')]= True
           
  # check if any character is missing then return False
  for ch in List:
    if ch == false
      return false
  return true

# Driver Program to test above functions
sentence = "The quick brown fox jumps over the little lazy dog"

if (checkPangram(sentence))
  puts '"'+sentence+'"'
  puts "is a pangram"
else
  puts '"'+sentence+'"'
  puts "is not a pangram"