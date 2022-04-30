# AWS cloud Infrastructure
1. RDS service using `PostgreSQL` running `osomaherdb` DB instance

   ![RDS_DB_status](./imgs/RDS.png)

2. EB environment `Osoapp-env-1` using `Node.js 16 running on 64bit Amazon Linux 2/5.5.2` running an application `osoApp`

   ![elasticbeanstalk_list](./imgs/eb-list.png)
   ![elasticbeanstalk_health](./imgs/eb-health.png)
   ![elasticbeanstalk_env](./imgs/eb_env.png)

3. S3 bucket which is **public** `elasticbeanstalk-us-east-1-689998734941` hosting the front end UI files

   ![simple_storage_service_list](./imgs/s3-list.png)
   ![simple_storage_service_details](./imgs/s3-details.png)

> ** All AWS services are accessed via IAM.

---

## Architecture diagram: [Diagram](architecture_diagram.md)