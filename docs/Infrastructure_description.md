# AWS cloud Infrastructure
1. RDS service using `PostgreSql` running `osomaherdb` DB instance

   ![RDS_DB_status](./imgs/RDS.png)

2. EB environment `Osoapp-env-1` using `Node.js 16 running on 64bit Amazon Linux 2/5.5.2` running an application `osoApp`

   ![elasticbeanstalk_status](./imgs/EB-2.png)
   ![elasticbeanstalk_status](./imgs/EB.png)

3. S3 bucket which is **public** `elasticbeanstalk-us-east-1-689998734941` hosting the front end UI files

   ![simple_storage_service_1](./imgs/S3.png)
   ![simple_storage_service_2](./imgs/S3-2.png)

> ** All AWS services are accessed via IAM.

---

## Architecture diagram in: [Diagram](architecture_diagram.md)