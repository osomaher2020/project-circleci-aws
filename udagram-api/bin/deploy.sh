eb init osomaher-app --platform node.js --region us-east-1
eb use Osomaherapp-env

eb setenv PORT='3000'
eb setenv DB_PORT='5432'
eb setenv POSTGRES_HOST='osomaherdb.c9cgcbjfdejg.us-east-1.rds.amazonaws.com'
eb setenv POSTGRES_DB='osomaherdb'
eb setenv POSTGRES_USERNAME='osomaher'
eb setenv POSTGRES_PASSWORD='osomaher123'
eb setenv JWT_SECRET='sola123'
eb setenv AWS_REGION='us-east-1'
eb setenv AWS_BUCKET='elasticbeanstalk-us-east-1-689998734941'

eb deploy Osomaherapp-env