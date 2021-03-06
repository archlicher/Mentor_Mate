# Mentor Mate

## The task

Write a console app, that prints on the console MM, so that when it receives a given parameter N
it will relate to the thickness of the letters. To show free space betteen letters, use '-'.
For the letters - '*'.

### Restrctions

2 < N < 10000. N is always an odd number.

### Hints
1. No restriction of programming language.
2. We preffer reading an well written code.
3. With more complex solution and usage of OOP would be given advantage

### Samples
N = 3
```
---***---***------***---***---
--*****-*****----*****-*****--
-***-*****-***--***-*****-***-
***---***---******---***---***
```

N = 5
```
-----*****-----*****----------*****-----*****-----
----*******---*******--------*******---*******----
---*********-*********------*********-*********---
--*****-*********-*****----*****-*********-*****--
-*****---*******---*****--*****---*******---*****-
*****-----*****-----**********-----*****-----*****
```

N = 7
```
-------*******-------*******--------------*******-------*******-------
------*********-----*********------------*********-----*********------
-----***********---***********----------***********---***********-----
----*************-*************--------*************-*************----
---*******-*************-*******------*******-*************-*******---
--*******---***********---*******----*******---***********---*******--
-*******-----*********-----*******--*******-----*********-----*******-
*******-------*******-------**************-------*******-------*******
```
## How to run it?

1. Clone the repository on your computer:
```
git clone https://github.com/archlicher/Mentor_Mate.git
```
2. Enter the cloned directory:
```
cd Mentor_Mate
```
3. And just type in the console:
```
ruby mentor_mate.rb
```
4. Or you can run the tests:
```
rspec spec/.
```

### Dependencies

It requires RSpec
```
gem install rspec
```