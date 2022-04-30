eb init osomaher-app --platform node.js --region us-east-1
eb use Osomaherapp-env
eb setenv PORT='3000' DB_PORT='5432' POSTGRES_HOST='osomaherdb.c9cgcbjfdejg.us-east-1.rds.amazonaws.com' POSTGRES_DB='osomaherdb' POSTGRES_USERNAME='osomaher' POSTGRES_PASSWORD='osomaher123' JWT_SECRET='sola123' AWS_REGION='us-east-1' AWS_ACCESS_KEY_ID='AKIA2BJZBEZOZ6BLQGVI' AWS_SECRET_ACCESS_KEY='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' AWS_BUCKET='elasticbeanstalk-us-east-1-689998734941'
eb deploy Osomaherapp-env