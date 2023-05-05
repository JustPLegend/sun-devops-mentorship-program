1. Kreiran bucket: 


Omogucavanje static website: 

![kreiran-bucket](printscreen/bucket-task9.png)

Properties -> Static website hosting -> Enable

![static-website-hosting](printscreen/stati-website-hosting.png)

Permissions -> Public access


1. Bucket policy

Dodati bucket policy da je pristup samo fajlovima u bucket s nasim web fajlovima.

![bucket-policy](printscreen/bucket-policy-task9.png)


3. CLoud Front postavke 

Postavke origin: S3 website endpoint 
Name: ostaviti po defaultu
Viewer: Redirect HTTP to HTTPS

![cloudfront1](printscreen/cloudfront1.png)

**Custom SSL certificate -> Request certificate**

![ssl-custom](printscreen/custom-ssl-certificate.png)

**Request certificate:**

![request](printscreen/requestcert2.png)

**Status pending - cekanje AWS da odobri custom certifiakt za domenu: suncica-pasalic.awsbosnia.com**

![aws-certifikat-pending](printscreen/aws-certifikat-pendin.png)


Screenshots: 

1. Bucket files:

![bucket-files](printscreen/bucket-files.png)

2. S3 endopint

![s3-endpoint](printscreen/s3-website-endpoint.png)

3.CloudFront endpoint: 

![cloud-front-distribucija-endpoint](printscreen/cloud-front-distribucija-endpoint.png)

