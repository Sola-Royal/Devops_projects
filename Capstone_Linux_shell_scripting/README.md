# **Bash script for generating a multiplicatin table**

>**this capstone is a bash multiplication table. the script will prompt user to enter a number and ask if they prefer to see a full table or partial table from 1 to 10 or a partial table with a specified range of number**

----
># **Part 1 List form**

> **User inpput for Number**
_the script will ask user to input number and it must be `valid number`_<br>
using `vakidate_number()` for function
![](./Img/1.%20user%20input%20for%20number.jpg)

>**function for table**<br>
_The function wil ask the number for the multiplicatio table_
![](./Img/2.table%20range.jpg)
_the main script workflow, starting with validate number and multillication table type_
![](./Img/3.%20input%20number%20and%20tablevtype.jpg)

>**Indicating Table type**<br>
_Using `if`, `while`, `elif` in the loop condition_
![](./Img/4.%20unput%20num%20and%20comp.jpg)
_display the the tble using list form for loop and ask user if they want to repeat the process_
![](./Img/5.%20display%20list%20form.jpg)

>**Output for full multiplication**<br>
![](./Img/6.0%20list%20form%20output%20full.jpg)

>**Output for partial multiplication**<br>
![](./Img/6.1%20list%20part.jpg)

>**Handling invalid range**<br>
_if it enter invalid range, it will repeat the process from entering the start number_
![](./Img/7.%20handling%20eror.jpg)


># **Part 2 C-style form**<br>
_the c-style form is loop syntax is a little bit different from list form in for loop_
![](./Img/8.%20c%20type%20loop.jpg)
![](./Img/9.%20main.jpg)
![](./Img/9.%201%20c.jpg)
![](./Img/9.2%20nnn.jpg)
_output full multiplication for c-style_
![](./Img/10%20output.jpg)
_output of partial multiplication for c-style_
![](./Img/10%20part%20output.jpg)

**This is all concerning shell script multiplication table**