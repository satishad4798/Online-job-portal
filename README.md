# Job-Portal

The online job portal application allows job seekers and recruiters to connect.The application provides the ability for job seekers to create their accounts, upload their profile and resume, search for jobs, apply for jobs, view different job openings. The application provides the ability for companies to create their accounts, search candidates, create job postings, and view candidates applications.

# Website Testing
Download the latest database.sql file.


```php
//Your db.php Mysql Config
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "job";
```

Step2: Now you login as candidate with following details

```php
Email: adsatish47@gmail.com
Password: 123456
//Note1: There are 100 candadates users all with same password-123456
//Note2: All Password are encrpyted through code so you CANNOT change password directly from database.
```

Step3: Now you login as Company with following details

```php
Email: company1@gmail.com
Password: 123456
//Note1: There are few  Companies account all with same password-123456

```

Step4: Now you login as Admin with following details

```php
Username: admin
Password: 123456
//Note: Password is not encrpyted from code so you CAN change directly from database.
```


