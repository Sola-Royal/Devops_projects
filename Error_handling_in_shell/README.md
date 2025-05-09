# **Error Handling in shell scripting**

>**this mini project is about error handling.**
_<p>Error handling in a Bash script means anticipating problems that could occur while the script runs and responding to them gracefully. Instead of letting the script fail unexpectedly, you can check for errors and take appropriate actions, like showing a helpful message, logging the error, or stopping the script.</p>_

----
> **Implementation of error handling**
_<p>It is essential to consider some factor while when implementing error in shell script. such as_
- identify potential errors: begin by identify errors in your script, such as user inout and validations, command execution.</p>_
- _<p>use conditonal statements: utilizing conditional statement (if, elif, else) to check error.</p>_
- _<p>provide informative messages</p>_


>**handling S3 bucket existence Error**
_<p>Error scenario could occur if the bucket already exist. to handle this error, we can modify the script to check if the bucket exist before</p>_

_<p>if we try to run your s rip-t more than once, you end up creating more EC2 instance than required, and S3 bucket creation will fail because the bucket already exist</p>_

_the update version of create_s3_buckets function with error handling for existence_
![](./img/newww%20buc.jpg)
_<p>In this updated version, before before attempting to each bucket, we use the aws s3api head-bucket command to check if it is already exist. if it is exist it will display.</p>_

>**example below**<br>
_created script called `identify_potential_error.sh`_
![](./Img/1.%20created%20id.jpg)
![](./Img/2.0%20error%20editor.jpg)
![](./Img/2.%20err.jpg)
_using `./identify_potential_error.sh` to execute the script and output the program it bring error because of the script_

_right script_
![](./Img/2.1%20worked.jpg)

_Conditional statement error_
![](./Img/3.%20conditional%20erro%20editor.jpg)
![](./Img/3.%20output.jpg)
----

_right script_
![](./Img/4.%20original%20code.jpg)
![](./Img/4.%20output.jpg)
![](./Img/5.2%20if%20execute.jpg)
---


**This is all concerning shell script error handling**
