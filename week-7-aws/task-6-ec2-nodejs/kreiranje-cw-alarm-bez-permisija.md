
## IAM korisnik nije vlasnik AWS racuna

Permsije error:
![error-billing](billing_permisije.png)

CW metrics u konzoli:

![cw-metrics](cw_metrics.png)

Ukoliko korisnik nije vlasnik AWS accounta i nema permisije za Billing dio, problem moze da rijesi tako da kopira CW alert-estimated troskova od vlasnika AWS Accounta:
1. Selektuje se CW alarm od vlasnika AWS racuna

2. U desnom uglu Actions -> Copy 

3. U novom otvorenom prozoru, u desnom uglu klikne se na Edit i onda izabere Select metric
![select-metric](select_metric.png)

4. Klikne se next i kreira novi topic

 ![new_topic](new_topic.png)

5. SNS topic potvrdimo preko emaila na koji ce nam dolaziti obavijest o visini troskova 
6. Kreiramo ime za nas cw alert: cw-alert-ime-prezime
7. U dashboard vidimo novi alarm koji je upravo kreiran

![cw-final](cw_final.png)