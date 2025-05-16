# **Capstone Project: E-Commerce platform deployment with Git, linux,and AWS**

>**this capstone is a will be use to develp an e-commerce website Named `MarketPeak`. I will use git version control on it, develop the platform on a linux environment and VS code, and deploy it to AWS ec2 instance**

----
># **1. Implement version control with Git**

> **User inpput for Number**<br>
_Creating a directory named `marketPeak_Ecommerce` and initilize it with fit repository_<br>
![](./Img/1.%20cretae.jpg)
![](./Img/2.%20cd%20&%20init.jpg)

>## **Obtain and prepare the E-Commerce Website Template**<br>
_This is the folder template of the website snd is named `MarketPeak`_
![](./Img/3.%200%20website%20folders.jpg)
_The website code and the home page`index.html`_
![](./Img/3.1%20website%20codes.jpg)


>## **Stage and Commit the template Git**<br>
_Adding a website file to the git repository and commit it to the github_
![](./Img/3.%20git%20add%20and%20commi.jpg)
_Push the code to the remote repository i created named `marketpeak_Ecommerce`_
_This command `git push -u origin main` pyshes my commit from local to remoy=te repository in order to store the project in the cloud_
![](./Img/4.%20push..jpg)


># **2. AWS Deployment**<br>
_To deploy `MarketPeak_Ecommerce` platform, i need to setup an Amazon EC2 instance_
![](./Img/5.%20aws%20ec2.jpg)

> **Clone the repository on the Linux server**<br>
_before deploying the website I have to clone github to my AWS EC2 instance using `ssh`_ <br>
![](./Img/6.%20connect%20github.jpg)

**_SSH Method_**
_Generate ssh keygen using `ssh-keygen`_
![](./Img/7.%20ssh%20conn.jpg)

_Using `cat /home/ubuntu/.ssh/id_rsa.pub` to Display and copy the public key. the cloned into our EC2_
![](./Img/8.%20cloned.jpg)

> **Install a web Server on EC2**<br>
_`Apache Http server` is widely used server that HTML file and content over the internent_ <br>
![](./Img/seerver.jpg)

> **Configure apace for Website**<br>
_prepare the web directory_
![](./Img/nnnnnnnnnn.jpg)
_`sudo systemctl reload apache2` to reload the service after configuration_
![](./Img/9.%20running%20http%20apache.jpg)


> **Access Website from Browser**<br>
_With `apache` configuration and website file in place, MarketPeak Ecommerce platform is live on the Internet_
![](./Img/10.%20website.jpg)


># **3. Continuous Integration and Deployment Workflow**<br>
_To ensure a smooth workflow for development, testing, and deploying your e-commerce platform_


> **Developing new Features and fixes**<br>
_Create a Development branch_
![](./Img/11.%20new%20branch.jpg)

**_Version Control with Git_**<br>
_`add .` used to stage the the change in new branch. `git commit -m "Add new features or fix bugs"` for commit changes that secure save in the Git repository. `git push origin development` to to enable collaboration and version tracking_
![](./Img/12.%20new%20brance%20dev%20push.jpg)



**_Pull request and merging to the Main branch_**<br>
_pull request is created and from the branch `Development branch`. _
![](./Img/13.pr.jpg)
_Review and merge the PR_
![](./Img/13.1%20merged.jpg)


**_`Git checkout main` bring it to main branch and use `git merge development` to merge the branch update to main. then use this `git push origin main` to pushit to the github_**

## **_Deploying updates to the producton server_**<br>
_Pull the request `git pull origin main`. ssh into the AWS EC2 instance where production website is hosted._

## **_Chanllenges facing_**<br>
![](./Img/14%20chanllenges.jpg)
_I encoutered challenges while i was trying to merge the branch when it has not move to main branch.<br> _The second chanllenges was when i did not pull the request change before push the local server__
![](./Img/14.1%20chanlleg%20solve.jpg)



**This workflow emphasizes best practices in software development and deployment, including branch management, code review through pull request**