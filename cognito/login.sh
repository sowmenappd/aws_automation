#!/bin/bash
read -p "Enter Cognito client ID: " CLIENT_ID;
read -p "Enter email: " EMAIL;
read -p "Enter password: " -s PASS;
printf "\nLogging in.."
aws cognito-idp initiate-auth --region us-east-1 --auth-flow USER_PASSWORD_AUTH --client-id $CLIENT_ID --auth-parameters USERNAME=$EMAIL,PASSWORD=$PASS
