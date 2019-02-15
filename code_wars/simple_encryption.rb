# Problem: Create two methods, 1 - Encryption 2- Decryption .
#          First we'll handle the Encryption Problem.
#          Create a method that takes a string and a second argument (integer)
#          and returns the string encypted based on the integer passed.
# Rules: any number <= 0 returns the original string not encrypted. 
#        Every second character from the string is taken and appended on the end
#        of the string. 
#        The integer passed equals the amount of itterations we will preform
#        our algorithm.
# Example: encrpyt("Hi Nick, we are encryting this message.") 
#          = "iNc,w r nrtn hsmsaeH ik eaeecyigti esg."
#          encrypt("Nick test") = "iktsNc et"
# Input: String, Integer
# Output: String
# Steps: 
# => Define a method that takes 2 paramaters, 1 string, 1 integer
# => initialize a temp_str variable = ''
# => initialize a result_str variable = ''
# => initialie a count variable 
# => itterate over the string.chars.each |char|
#   => if count.odd?
#     => temp_str << char
#   => else result_str << char
#   => count += 1
# => After all iterations complete result_str << temp_str
# =>return result_str.join  

def encrypt(text, n)
  #your code here
end

def decrypt(encrypted_text, n)
  #your code here
end



encrypt("This is a test!", 0), "This is a test!")
encrypt("This is a test!", 1), "hsi  etTi sats!")
encrypt("This is a test!", 2), "s eT ashi tist!")
encrypt("This is a test!", 3), " Tah itse sits!")
encrypt("This is a test!", 4), "This is a test!")
encrypt("This is a test!", -1), "This is a test!")
encrypt("This kata is very interesting!", 1), "hskt svr neetn!Ti aai eyitrsig")
decrypt("This is a test!", 0), "This is a test!")
decrypt("hsi  etTi sats!", 1), "This is a test!")
decrypt("s eT ashi tist!", 2), "This is a test!")
decrypt(" Tah itse sits!", 3), "This is a test!")
decrypt("This is a test!", 4), "This is a test!")
decrypt("This is a test!", -1), "This is a test!")
decrypt("hskt svr neetn!Ti aai eyitrsig", 1), "This kata is very interesting!")
encrypt("", 0), "")
decrypt("", 0), "")
