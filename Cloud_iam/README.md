# **Security and identity access management**

>**This mini project is about AWS IAM. I will bw working on Zappy e-bank project using AWS IAM in managing cloud resources security and efficiently.**

> ## **Importance of IAM in Zappy e-Bank**
_<p>1. Protects Sensitive Customer Data:Zappy e-Bank deals with highly sensitive information like customer identities, bank accounts, transactions, and financial history. IAM helps ensure that only authorized staff can access this data, preventing data breaches and identity theft.</p>_

_<p>2. Enables Secure Access Control: IAM makes it easy to define who can access what within the system. IAM is like the digital gatekeeper of Zappy e-Bank — ensuring the right people have the right access to the right resources at the right time. It plays a key role in protecting customer trust, ensuring legal compliance, and keeping the bank’s systems secure and efficient.</p>_


_The Role of IAM in AWS Identity and Access Management (IAM) in AWS is like the security guard for your cloud resources. It makes sure that only the right people can access certain data or services. Imagine a building where you need a special pass to enter different rooms—IAM is the system that gives out those passes and checks them at the door. This helps keep everything organized and secure so that only authorized people can do certain things in your AWS environment._

> # **Project Reflection and settup**

>**Log in into the AWS management Console**<br>
_This my managemt Console_
![.](./Img/1.%20console%201.jpg)
_Here is the IAM dashboard_
![.](./Img/2.%20iam.jpg)

>**Creating IAM Users**<br>

_an IAM USER  is a unique idnetity within an AWS acciunt that represents a person or services, granting specific permissions to access an interact with AWS s=resources under controlled and customizable security policies_

_There is a master key to building which is root user. we will not want to give the master key to `john` and `mary` because of security purpose._

_I will setup `IAM` user for a `backend developer, john`, and a `data analyst, mary`, by first determing their specific access needs_

_As a backend developer, john rewuires access to server `EC2` to run his code, necessitating an IAM user with policies granting EC2 access._

_As a data analyst, Mary needs access to data storage `AWS S3 Service`, so her IAM user should have policies enabling S3 access_


> ## **Create policy for the Development team**<br>

_1. In the IAM console_
![new](./Img/3.%20dashboard.jpg)
_create policy_
![new](./Img/3.%20create%20policy.jpg)

_Search for EC2_
![new](./Img/4.0%20ec2%20search.jpg)

_selecting the `ALL EC2 actions` checkbox, selected `ALL` in the resources section_
![new](./Img/4.1%20all.jpg)
![new](./Img/4.2%20all2.jpg)



_provided the name `developers` and description for the policy_
![new](./Img/5.%20developers.jpg)
_Created the policy_
![new](./Img/5.1%20create.jpg)

__The dashboard of the policy developers created__
![new](./Img/5.2%20created.jpg)
_In `developers` policy there is an `customer managed` while on `AWS` there is `AWS managed`. it means we are in  charged_
![new](./Img/6.%20cus%20managed.jpg)

> ## **Create policy for the Data Analyst team**<br>
_specify permission for s3 bucket for data analyst_
![new](./Img/7.%20anals.jpg)
_use `analyst` as a name and the description for the data analyst S3 bucket_
![new](./Img/7.2%20analys.jpg)
_Select `all` for the permission choice_
![new](./Img/7.1%20s3.jpg)
__Next for other options before the creation and type `create policy`__
![new](./Img/7.3%20created.jpg)
__policy analyst created and the customer managed enabled__
![new](./Img/7.4%20policy%20cre.jpg)


> ## **Create Group for the Development team**<br>
__In the IAM console navigation, Select `User group` and in the top right click `Create group`__
![new](./Img/8.%20user%20group.jpg)
_imput the development team name `Development-Team`_
![new](./Img/8.1%20devteam.jpg
)
![new](./Img/8.1%20devteam.jpg
)
_attach the developers policy we created to the group Development-Team._
![new](./Img/8.2%20atach.jpg)
_the development team Created_
![new](./Img/8.3%20created.jpg)


> ## **Create Group for the Data analyst team**<br>
__The dashboard for the resources `IAM`, there is a one user group, two roles two policy.__
![new](./Img/9.%20after%20user%20grp.jpg)
_User group dashboard to create a `data analyst` group_
![new](./Img/9.1%20to%20create%20grp.jpg)
_imput the Analyst team name `Analyst-Team` as a name_
![new](./Img/9.2%20analy%20grp.jpg)

_attach the `analyst` policy we created to the group `Analyst-Team`._
![new](./Img/9.3%20grp%20created.jpg)
_the group team Created successfully_
![new](./Img/10.%20grp%20cretaed%20anay.jpg)

![new](./Img/10.%20grp%20cretaed%20anay.jpg)

> ## **Create IAM User for john**<br>
__John is a backend developer to be added to Development-Team group__
_Navigate to IAM dashboard, select ` Create User`_
![new](./Img/11.%20user%20create.jpg)
_imput the name `john` and review the process_
![.](./Img/11.1%20user%20cregte.jpg)
_Add the user john to development team_
![.](./Img/11.2.jpg)
__Create User__
![.](./Img/11.3%20user%20created.jpg)

__Download the john credentials for login__
![.](./Img/12.%20download%20john%20user.jpg)


> ## **Create IAM User for Mary**<br>
__Mary is a Data analyst to be added to Development-Team group__
_Navigate to IAM dashboard, select ` Create User` and _imput the name `mary` and review the process__
![new](./Img/13.%20mary%20user.jpg)
![.](./Img/13.1%20mart%20created.jpg)
_Add the user mary to development team_
![.](./Img/13.2%20mary.jpg)

__Create User__
![.](./Img/13.3%20mary.jpg)

__Download the mary credentials for login after successfull creation__
![.](./Img/13.4%20Mary%20created.jpg)

_Difference Between IAM Users and Groups IAM users are like individual people with their own keys to the building. Each user has their own login and permissions. IAM groups, on the other hand, are like teams. Instead of giving each person separate permissions, you can put them in a group and give the group the access it needs. For example, if you have five developers, you add them to a "Developers" group and set the permissions for the group once, rather than for each person separately._

_How IAM Policies are Created Creating an IAM policy is like writing a set of rules for what someone can and cannot do. First, you decide what actions you want to allow or block (like reading data, updating files, or deleting resources). Then, you write these rules in a policy, which is just a document that AWS understands. Finally, you attach this policy to a user or a group, which gives them the permissions you specified._

> ## **Testing and validation**<br>
__To validate john permission__
_login as john, using the credential downloaded into the AWS management console_
![.](./Img/14.%20john.jpg)
![.](./Img/14.1%20john%20consle.jpg)
_John Console management dashboard_
![.](./Img/14.1%20john%20consle.jpg)
_Navigating to EC2 instance for the policy cretaed only_
![.](./Img/14.2%20ec2%20ins.jpg)
_Attempting to use ssh and creating new instance it was denied_
![.](./Img//14.3%20not%20permit.jpg)
_acees denied_
![.](./Img/14.4%20access.jpg)
_it has access to operate on EC2 suh as `Start, stop running and so on_
![.](./Img/14.5%20launch.jpg)
![.](./Img/14.6%20manage%20acc.jpg)
![.](./Img/14.7%20stopped.jpg)

__To validate mary permission__
_login as mary, using the credential downloaded into the AWS management console_
_Changing mary password_
![.](./Img/15.%20mary%20pass.jpg)
_Mary dashboard on the management console_
![.](./Img/15.1%20mary%20dash.jpg)
_Mary access to S3 bucket only and creation_
![.](./Img/15.2%20s3.jpg)
_Creating s3 bucket named `Mary bucket`_
![.](./Img/15.4%20%20create%20s3.jpg)
![.](./Img/15.5....jpg)
![.](./Img/15.6....jpg)
_Create the bucket_
![.](./Img/15.7..%20crea.jpg)
__The s3 buckety for storage created successfully__
![.](./Img/15.8%20created.jpg)
_perfroming s3 action by uploading file into the storage_
![.](./Img/15.9%20upload.jpg)
_Uploading file/folder_
![.](./Img/16.%20upl.jpg)
__selecting file for uploading__
![.](./Img/16.1.jpg)
_File uploaded succesfully, making a action on s3 done_
![.](./Img/16.2%20uploaded.jpg)

## __Validare group policy__
_Test the validation and autorization, mary was not autorised into EC2 instance because the permission was for only S3 bucket_
![.](./Img/16.3%20%20Mary%20not%20authorised.jpg)
_crearing a user by herself also denied_
![.](./Img/17.%20valid.jpg)

__John in Development-Team group Validation__
_all thge security access was denied_
![.](./Img/17.3%20denied.jpg)
_creating user into group was also denied_
![.](./Img/17.4%20iam%20denied.jpg)


> ## **Implememt Multi-Factor Authentication**<br>
_Multi-factor authentication(MFA) is a security feature that adds an extra layer of protection to your AWS account and resources. With MFA ebabled, user are required to provide two or more fe=orms of authentication before they can access AWS resources_

 __Create and setting up MFA for john__<br>
 _Click user and click on john_
 ![.](./Img/18.%20mfa.jpg)
 _input the name for MFA `john-MFA`, and pick authenticator app_
 ![.](./Img/17.5%20john%20mfa.jpg)
 _Open google authenticator to scan the code for MFA_
![.](./Img/18.3...jpg)
_by completing step 1-5, MFA will be enabled for john_
![.](./Img/18.4..%20created.jpg)
![.](./Img/)

__Setting up MFA for Mary__<br>
 _Click user and click on mary_
 ![.](./Img/19.%20mary%20mfa.jpg)
_Click on the enabled MFA as shown in the image below_
 ![.](./Img/19.11.jpg)
  _input the name for MFA `john-MFA`, and pick authenticator app_
  ![.](./Img/19.22.jpg)
 _Open google authenticator to scan the code for MFA_
![.](./Img/19.333.jpg)
_by completing step 1-5, MFA will be enabled for Mary_
![.](./Img/19.4444.jpg)


_The Principle of Least Privilege The principle of least privilege means only giving people access to what they absolutely need, nothing more. It’s like giving someone a key that only opens the rooms they need for their work, not the whole building. In AWS, this is important because it reduces the chance of mistakes or misuse. If someone’s account is compromised, the damage is limited because they couldn’t access things they didn’t need._

**This is all concerning The IAM and its security**
