# Pipeline Diagram
![circleci_process](./imgs/ci_cd_process.png)

# Pipeline Process
The application is connected to `github` on repository: https://github.com/osomaher2020/project-circleci-aws

Branch: `master`

Which is used by CircleCI for CI/CD following a deployment steps as:

1. prepare needed executors and environment
    - node: circleci/node@5.0.2
    - aws-cli: circleci/aws-cli@3.1.0
    - aws-elastic-beanstalk: circleci/aws-elastic-beanstalk@2.0.1
2. run jobs in order:
    - frontend-install
    - backend-install
    - frontend-build
    - backend-build
    - backend-test
    - frontend-deploy
    - backend-deploy

![circleci_deploy1](./imgs/circleci-deploy1.png)
![circleci_deploy2](./imgs/circleci-deploy2.png)

---
## Deploying the Backend API:
executes the script in `udagram-api/bin/deploy.sh` which contains steps to deploy on AWS EB:
```
eb init osomaher-app --platform node.js --region us-east-1
eb use Osomaherapp-env

eb setenv PORT='3000' DB_PORT='5432' POSTGRES_HOST='osomaherdb.c9cgcbjfdejg.us-east-1.rds.amazonaws.com' POSTGRES_DB='osomaherdb' POSTGRES_USERNAME='osomaher' POSTGRES_PASSWORD='osomaher123' JWT_SECRET='sola123' AWS_REGION='us-east-1' AWS_BUCKET='elasticbeanstalk-us-east-1-689998734941'

eb deploy Osomaherapp-env
```

AWS EB API: http://osomaherapp-env.eba-kvfcxsyw.us-east-1.elasticbeanstalk.com/api/v0

---
## Deploying the Frontend UI:
executes the script in `udagram-frontend/bin/deploy.sh` which contains steps to deploy on AWS S3:
```
aws s3 cp --recursive --acl public-read ./www s3://elasticbeanstalk-us-east-1-689998734941/
```

AWS S3 static website: http://elasticbeanstalk-us-east-1-689998734941.s3-website-us-east-1.amazonaws.com

---

# CircleCi Environment variables

![circleci_env](./imgs/circleci_env.png)
![circleci_eb_setenv](./imgs/eb-setenv.png)
