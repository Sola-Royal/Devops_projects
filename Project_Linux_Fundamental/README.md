**# Mini project linux fundamentals**
---

>**this project is about creating a cloud server weith AWS account and setup EC2 instancre and connect it to local server**

----
># **Signed to AWS account**

_After sign up i signed in into AWS account and my username Sola-Royal_

![aws account](./img/1.%20AWS%20ACCOUNT.jpg)


-----
># **EC2 SEARCHED**

_I searched for ec2 nfrom the services of all AWS services_
![secrched](./img/2.%20EC2%20INSTANCE.jpg)


># **EC2 Virtual cloud service**

_After seeing the EC2 i press the instances to create a ec2_
![instance created](./img/3.%20instancer.jpg)
**

_EC2 instances created_
![created](./img/4.%20ins%20created.jpg)


>#  **EC2 Instance Connect**
_i can now connect using EC2 cloud server instance connect with public IP4 address using ssh command_
![connect](./img/5.%20connect.jpg)
![ssh](./img/6.%20sssh%20conn.jpg)


>#  **connect cloud server to local environment**

_Connecting AWS cloud server to my git bash linux local envirinment using `ssh` command `ssh -i "sola-ec2.pem" ubuntu@public_ip_address`_
![local server](./img/7.%20connect%20git%20bash.jpg)

># packages manager
_i used commonly used package manager such as `apt` to install package into the cloud server from the local repository using `sudo apt`_
![sudo apt](./img/8,%20sudo%20update.jpg)

>#  **Installing, updating, and removing software**
_`sudp apt install tree`_
![tree installed](./img/9%20install%20tree.jpg)


># **remove tre`**
_`sudo apt remove tree`_
![tree removed](./img/10%20a....jpg)

># **upgrade**
_`sudo apt upgrade`_
![upgrade](./img/10%20gggg.jpg)

># **Install nginx**
_`sudo apt install nginx` is install to my cloud hosting web_
![nginx](./img/11%20ginx.jpg)


>**The linux project help the cloud server and local environment how they collaborate**