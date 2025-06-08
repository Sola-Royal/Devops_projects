# **Shell script for AWS IAM management**

>**This Capstone project project is about Shell and AWS management. shell script is being used to write code that work with AWS direct from the CLI.**


# **1. Script Purpose**
>_**Created the bash file named `aws-iam-manager.sh`**_
![.](./Img/1.jpg)

_This specifies that the script should be run in the Bash shell._
_The comments describe its purpose: to automate AWS IAM user, group, and permission management._
![.](./Img/2.jpg)

>_**Define IAM User Names Array**_<br>
_This line creates an array variable called `IAM_USER_NAMES` containing five user names._
_These names will be used to create IAM users in AWS._
![.](./Img/3.jpg)

>_**Function to Create IAM Users**_<br>
_This function loops over each user name in the array._
_For each name, it runs aws iam create-user to create the user in AWS._
_It checks if the command succeeded ($? -eq 0), and prints a success or warning message._
![.](./Img/4.jpg)


>_**Function to Create Admin Group and Attach Policy**_<br>
This function ensures an IAM group called "admin" exists.
It first checks if the "admin" group exists. If not, it creates it.
Afterwards, it attaches the AWS-managed "AdministratorAccess" policy to the "admin" group, giving it administrative privileges.
![.](./Img/4.2.jpg)

>_**Function Placeholder to Add Users to Admin Group**_<br>
_This is a placeholder function. It’s meant to add the created users to the "admin" group, but the code isn’t implemented yet._
_It just prints messages for now._
![.](./Img/4.3.jpg)

>_**Main Function and Script Execution**_<br>
_This is the main entry point for the script._
_It prints headers, checks if the AWS CLI tool is installed, and then runs the three main functions in order._
![.](./Img/4.4.jpg)

_The Script Executionc alls the main function to start the process_
_exit 0 ensures the script exits successfully._

>_**The output of the implementation**_<br>
![.](./Img/5.jpg)
![.](./Img/5.1.jpg)
![.](./Img/5.2.jpg)

>_**The Link**_<br>
[Link to the extended script](https://github.com/Sola-Royal/Devops_projects/blob/main/Shell_script_iam/index.sh)

**This is all concerning Shell script for AWS IAM management**
