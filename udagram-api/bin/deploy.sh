eb init osomaher-app --platform node.js --region us-east-1
eb use Osomaherapp-env
eb setenv PORT='3000' DB_PORT='5432' POSTGRES_HOST='osomaherdb.c9cgcbjfdejg.us-east-1.rds.amazonaws.com' POSTGRES_DB='osomaherdb' POSTGRES_USERNAME='osomaher' POSTGRES_PASSWORD='osomaher123' JWT_SECRET='sola123' AWS_REGION='us-east-1' AWS_BUCKET='elasticbeanstalk-us-east-1-689998734941'
eb deploy Osomaherapp-env