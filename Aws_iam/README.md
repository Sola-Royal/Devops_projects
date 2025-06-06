# **AWS Identity and Access management Mini Project**

>**This mini project is about AWS IAM. I will be working on GotoGrowFast.com project using AWS IAM in managing cloud resources security and access management efficiently.**

__Wha is IAM?__
_<p>The term IAM stands for Identity and Access Management. It refers to the processes, policies, and technologies used to manage digital identities and control user access to resources within an organization or system. IAM ensures that the right individuals have the appropriate access to technology resources for the right reasons. Is like a gatekeeper for your AWS resources, its job is to decide who gets in and what they're allowed to do once they're inside</p>_


__Wha is IAM User?__
_<p>IAM user are like individual accounts for different people or entities within our AWS environment. also a user with its own identity. Suppose a company has three developers working on AWS. Instead of giving them the root account credentials, the comapany can make an IAM user for each (e.g., Eric, Jack, and Ade) and only give them access to the resources they need, such as S3 buckets or EC2 instances.</p>_


__Wha is IAM Role?__
_<p>An AWS role is an identity within AWS Identity and Access Management (IAM) that has a set of permissions, but unlike an IAM user, it is not associated with a specific person or permanent credentials. An AWS role is a way to delegate access to AWS resources securely and temporarily, without sharing long-term credentials, and is commonly used by services or users who need temporary permissions.</p>_

__Wha is IAM policy?__
_<p>An AWS policy is a document that defines permissions for actions on AWS resources. Policies are a fundamental part of AWS Identity and Access Management (IAM), and they determine what actions are allowed or denied for users, groups, and roles.</p>_

__Example Policy__
_A simple policy to allow reading from a specific S3 bucket might look like this:_

<p>
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::my-bucket/*"
    }
  ]
}</p>

__Wha is IAM Group?__
_<p>An AWS group is a collection of IAM users in AWS Identity and Access Management (IAM). Groups are used to manage permissions for multiple users at once, making it easier to assign and control access in your AWS environment. An AWS group is a way to efficiently manage permissions for multiple IAM users by grouping them together and attaching policies to the group. This makes managing access easier and more scalable.</p>_


__Wha is MFA?__
_<p>AWS multi-factor authentication (MFA) is an AWS Identity and Access Management (IAM) best practice that requires a second authentication factor in addition to user name and password sign-in credentials. You can enable MFA at the AWS account level for root and IAM users you have created in your account.</p>_


# **Part-1**
> ## **Navigate to the AWS management Console**
_Using search bar to navigate to the identity and Access Management (IAM) Services._
![.](./Img/1..jpg)

_Navigate to left bar and click role, and search EC2 and select "`AmazonEC2FullAcess`" from the list of policies._
_proceed by clicking `Creating policy` to initiate the policy creation process_
![.](./Img/2.%20policies.jpg)

>_**Now, Select all EC2 actions**_
![.](./Img/2.1.jpg)

>_**Tick `All resources` and click `next`**_
![.](./Img/2.2.jpg)

>_**Now click on create policy**_
![.](./Img/2.3.jpg)

>_**Policy Created**_
![.](./Img/2.4%20policy%20created.jpg)


> ## **User Creation**
_Now, proceed to the `users` section and select the option `create user`_
![.](./Img/3.%20user.jpg)

_Enter the desired username for the user. then selec the option of AWS Management console, and if access to the web-based console interface is required._
_Proceed to set up a password for the user_
![.](./Img/3.2.jpg)

_Select the attach policy `directly` and navigate to `Filter customer managed policies`, and choose the `policy_for_eric` i creted_
![.](./Img/3.3.1.jpg)

> **_Create user_**
![.](./Img/3.4.jpg)
_The user has been created and EC2 has been successfully attached, then click `return to user list`_
![.](./Img/3.5.jpg)


# **Part-2**
> ## **On the `user Group` section, enter a name for the group**

>_**Click on "Create user Group**_
_Then proceed to the `user` Section_
![.](./Img/4.%20group.jpg)
![.](./Img/4.1.jpg)

> **_This is the group I created._**
![.](./Img/4.2.jpg)


>_**Proceeding to the user Section for Jack user creation**_<br>
_let create a user named`jack user`. In the `permission` options, select `Add user to the group`, then i choose the group creted named `Development-team2`_
![.](./Img/5.%20user%20re.jpg)

> **_Click next_**
![.](./Img/5.2.jpg)

> **_click on create user_**
![.](./Img/5.3.jpg)

> **_ Jack user created_**
![.](./Img/5.3.jpg)


>_**Same process for Ade as a user too in the same group with jack**_<br>
![.](./Img/6.1%20ade.jpg)

> **_Ade user_**
![.](./Img/6.2.jpg)
_Ade created_
![.](./Img/6.3.jpg)


>_**Navigate to `policies` section and clik `cretae policy` to begin crafting a new policy**_<br>
![.](./Img/7.1%20policy.jpg)

> **_Choosing EC2 Aand S3 and select full access for them_**
![.](./Img/7.2.jpg)
![.](./Img/7.3.jpg)

> **_I named the policy `Development-team-policy` and create it_**
![.](./Img/7.4%20cre.jpg)
![.](./Img/7.5%20cretaed.jpg)



>_**Navigate to `User Group` section and click the `Development-team-policy` group**_<br>
![.](./Img/8.jpg)
_Proceed to the `permissions` section and add the neccesary permissions_
![.](./Img/8.1....jpg)


> **_Click on `Attach policy`_**
![.](./Img/8.2.jpg)

_Policy is now attached to the group, granting full permission to EC2 for the group's users._
![.](./Img/8.3.jpg)


**This is all concerning The AWS Identity and Access management Mini Project**
