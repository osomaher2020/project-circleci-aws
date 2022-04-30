# Frontend Application
http://elasticbeanstalk-us-east-1-689998734941.s3-website-us-east-1.amazonaws.com

---

# Project Endpoints
- SHOW user **(GET)**: ```osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com/api/v0/users/:email```


  >ex: http://osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com/api/v0/users/osomaher1@gmail.com

- CREATE user **(POST)**: ```osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com/api/v0/users/auth```

    >{
        "email": "new_mail@blabla.com",
        "password": "123"
    }

- LOGIN user **(POST)**: ```osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com/api/v0/users/auth/login```

    >{
        "email": "new_mail@blabla.com",
        "password": "123"
    }

---

# AWS environment
- AWS RDS: ```osomaherdb.c9cgcbjfdejg.us-east-1.rds.amazonaws.com```
- AWS Elastic Beanstalk: ```osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com```
- AWS S3: ```http://elasticbeanstalk-us-east-1-689998734941.s3-website-us-east-1.amazonaws.com```

---

# Environment Variables (api)
```
PORT='3000'
URL='http://osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com/'

DB_PORT='5432'
POSTGRES_HOST='osomaherdb.c9cgcbjfdejg.us-east-1.rds.amazonaws.com'
POSTGRES_DB='osomaherdb'
POSTGRES_USERNAME='osomaher'
POSTGRES_PASSWORD='osomaher123'

JWT_SECRET='sola123'

AWS_REGION='us-east-1'
AWS_BUCKET='elasticbeanstalk-us-east-1-689998734941'
```
---
# Project Details
- Application dependencies: [Dependencies](./docs/app_dependencies.md)
- AWS cloud Infrastructure: [AWS Infrastructure](./docs/Infrastructure_description.md)
- AWS Architecture diagram: [Diagram](./docs/architecture_diagram.md)
- Pipeline process: [Pipeline](./docs/pipeline_process.md)
