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

**Request certificate: (potrebno importovati cert)**

![request](printscreen/requestcert2.png)


**Import certificate using keys**

![chain-privkey](printscreen/cert-chain-privkey.png) 
Screenshots: 

1. Bucket files:suncica-pasalic-devops-mentorship-program-week-11.s3-website-us-east-1.amazonaws.com

![bucket-files](printscreen/bucket-files.png)

2. S3 endopint:

![s3-endpoint](printscreen/s3-website-endpoint.png)

3.CloudFront endpoint: https://d3pbvv2t4px2oy.cloudfront.net

![cloud-front-distribucija-endpoint](printscreen/cloud-front-distribucija-endpoint.png)

