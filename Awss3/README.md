# **AWS S3 Mini Project**

>**This mini project is familiarize with Amazon S3(simple storage service) and its fundsmemtsl concept.**

> # **Amazon S3**
_<p>Amazon S3, or Simple Storage Service, is like a big digitsl waerehouse where you can store all kinds of data. its part of amazon web services (AWS), which is a collection of cloud computing services</p>_


__S3 Benefits__
_<p>It helps in storing data in the cloud, as a data centre you can retrieve your data anywhere. </p>_

> # **Setting Up the Creation of an Amazon S3 bucket**<br>
> _First, navigate to the `search bar` on the Aws console, and search for `S3`_
![.](./Img/1.%20sa3.jpg)

>**Create Bucket**<br>
_Let proceed with creating a new  bucket named `myfirsts3bucket-sola`_
![.](./Img/1.1%20s3%20bucket.jpg)
_Select `ACL Disabled` for object ownership_
![.](./Img/1.3%20bu.jpg)
![.](./Img/1.4.jpg)

_The bucket has been successfully created_
![.](./Img/1.5%20s3%20bucket%20created.jpg)

__The structure__
 ![.](./Img/111.jpg)

 __`ACL activated__
 ![.](./Img/acl11.jpg)
  ![.](./Img/acl222.jpg)

   __`block public access` acivated__
 ![.](./Img/activ.jpg)
  ![.](./Img/activ2.jpg)

__(a) `Edit` to make change__
![.](./Img/4..jpg)
_Now `uncheck` the `Block all access` option., then click oin `save changes`_
![.](./Img/4.1.jpg)

>**object Uploading**<br>
_let create ba file on my laptop with some data. , we'll write `Welcome to the AWS world` and save it._
![.](./Img/2.1.jpg)
![.](./Img/ft1.jpg)


__Click `Upload button`__
_click on the `Add file` and add the file you want to upload._
![.](./Img/2.2...jpg)
__`Click open`__
![.](./Img/2.3.jpg)

__Finally `Upload` to complete the process__
![.](./Img/2.4...jpg)

__Congratultions!, it has been successfully uploaded object(file) to the S3 bucket(folder).__
![.](./Img/2.5.jpg)


> # **Enabling Version**<br>
_AWS versioning is a feature primarily associated with Amazon S3 (Simple Storage Service), and it refers to the ability to keep multiple variants of an object in the same bucket_

_Versioning allows you to preserve, retrieve, and restore every version of every object stored in an S3 bucket.
When versioning is enabled on a bucket, any time you upload (PUT) a new object with the same key (name) as an existing object, S3 automatically creates a new version of that object.
Each version of an object is assigned a unique version ID._

> _On the Bucket `properties` section on the righ side, you will notice that bucket versioning is currently disabled. then enable it._
![.](./Img/3..%20bucket%20version.jpg)

__Click Edit__
![.](./Img/3.1.jpg)

__Select `Enabled` then saved__
![.](./Img/3.2...jpg)

__Modify the content and re-upload it again, i will create a new version of the file.__
![.](./Img/ft2.jpg)
![.](./Img/3.3%20version%20cont.jpg)

__Another uploading__
![.](./Img/3.4.jpg)


##  __To view the content of all the versions, let's proceed to our next step, which involves setting permissions__

__Navigate to `permission` section and see if `Block all Public access` is enabled.__

__(a) `Edit` to make change__
![.](./Img/4..jpg)
_Now `uncheck` the `Block all access` option., then click oin `save changes`_
![.](./Img/4.1.jpg)

![.](./Img/4.2%20saved.jpg)
__Now, type `confirm` and click confirm__
![.](./Img/4.3%20done.jpg)

__Bucket policy__
![.](./Img/5.%20policy.jpg)
_click on the policy generator which also define what others can do omn your file_
![.](./Img/5.1.jpg)

__Select the type of policy as `S3 Bucket policy`__
![.](./Img/5.2.jpg)

__arn__
![.](./Img/Arn.jpg)
__Generate policy__
_Click `add statement` after inputing the actual `ARN`_
![.](./Img/5.3.jpg)

_Now, copy the `JSON` file and close it_
![.](./Img/5.4.jpg)

_Paste the policy generated to the policy and `Save`_
![.](./Img/5.5.jpg)

__set public access permission private__
![.](./Img/acces%20b.jpg)
_Now, click on the version of the file_
![.](./Img/6.jpg)

__Click on the object URl__
![.](./Img/6.1.jpg)
_Here you will see the previous data_
![.](./Img/6.2.jpg)

__If we click on the latest version and click on the object URL,__
![.](./Img/6.3.jpg)
__click on the URL__
![.](./Img/6.4.jpg)
__You will get the latest data__
![.](./Img/6.5.jpg)



##  __Creating lifecycle policies__
_Navigate to the management section of the bucket, also `The Aws version  has been updated`_

__Click on `Create lifecycle rule`__
![.](./Img/7.jpg)

__Give the specifications, and click to create rule__
![.](./Img/7.1.jpg)
![.](./Img/7.3.jpg)

__Now the lifecycle policy is being crated successfully__
![.](./Img/7.4.jpg)



**This is all S3 amazon bucket in a short for cloud computing**
