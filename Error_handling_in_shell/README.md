# **Error Handling in shell scripting**

>**this mini project is about error handling in script.**

_Error handling in a Bash script means anticipating problems that could occur while the script runs and responding to them gracefully. Instead of letting the script fail unexpectedly, you can check for errors and take appropriate actions, like showing a helpful message, logging the error, or stopping the script._


> **Implementation of error handling**

_It is essential to consider some factor while when implementing error in shell script. such as_
- _identify potential errors: begin by identify errors in your script, such as user inout and validations, command execution._
- _use conditonal statements: utilizing conditional statement (if, elif, else) to check error._
- _provide informative messages_


>**handling S3 bucket existence Error**

_Error scenario could occur if the bucket already exist. to handle this error, we can modify the script to check if the bucket exist before._

_if we try to run your s rip-t more than once, you end up creating more EC2 instance than required, and S3 bucket creation will fail because the bucket already exist._

_the update version of create_s3_buckets function with error handling for existence_<br>
![bucket](./Img/newww%20buc.jpg)
_In this updated version, before before attempting to each bucket, we use the aws s3api head-bucket command to check if it is already exist. if it is exist it will display._

>**example below**<br>
_created script called `identify_potential_error.sh`_<br>
![new](./Img/1.%20created%20id.jpg)
![ee](./Img/2.0%20error%20editor.jpg)
![we](./Img/2.%20err.jpg)
_using `./identify_potential_error.sh` to execute the script and output the program it bring error because of the script_

_right script_<br>
![er](./Img/2.1%20worked.jpg)

_Conditional statement error_
![er](./Img/3.%20conditional%20erro%20editor.jpg)
![ff](./Img/3.%20output.jpg)


_right script_<br>
![gf](./Img/4.%20original%20code.jpg)
![gg](./Img/4.%20output.jpg)
![cdc](./Img/5.2%20if%20execute.jpg)



**This is all concerning shell script error handling**
