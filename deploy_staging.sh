STAGING_SERVER="jenkins_slave@ip-172-31-3-216"
APP_DIR="/home/jenkins_slave/app"

echo "Deploying to Staging on Slave..."
ssh $STAGING_SERVER << EOF
    cd $APP_DIR
    git pull origin main
    npm install
    pm2 restart app
EOF

echo "Staging Deployment Completed!"
