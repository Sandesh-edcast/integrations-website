#!/bin/sh
# aws s3 sync dist/ s3://analytics-events-docs --dryrun
echo "Do you want upload files to S3 ?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) aws s3 cp dist s3://analytics-events-docs --recursive;break;;
        No ) exit;;
    esac
done

echo "\n\n======================"
echo "deployed"
echo "view docs at https://integrations.edcast.com"
echo "======================\n\n"
