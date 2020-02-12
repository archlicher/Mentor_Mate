require_relative 'lib/validation'
require_relative 'lib/draw'

puts 'Please enter a value for N or "x", if you want to exit:'
n = gets.chomp

exit if n == 'x'

m = validation(n.to_i)

draw(m)

# n = 3
# ---***---***------***---***---
# --*****-*****----*****-*****--
# -***-*****-***--***-*****-***-
# ***---***---******---***---***
# n = 5
# -----*****-----*****----------*****-----*****-----
# ----*******---*******--------*******---*******----
# ---*********-*********------*********-*********---
# --*****-*********-*****----*****-*********-*****--
# -*****---*******---*****--*****---*******---*****-
# *****-----*****-----**********-----*****-----*****
# n = 7
# -------*******-------*******--------------*******-------*******-------
# ------*********-----*********------------*********-----*********------
# -----***********---***********----------***********---***********-----
# ----*************-*************--------*************-*************----
# ---*******-*************-*******------*******-*************-*******---
# --*******---***********---*******----*******---***********---*******--
# -*******-----*********-----*******--*******-----*********-----*******-
# *******-------*******-------**************-------*******-------*******