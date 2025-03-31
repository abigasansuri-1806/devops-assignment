PRODUCTION_SERVER="jenkins@ip-172-31-3-216"
APP_DIR="/home/jenkins/app"

echo "Deploying to Production on Master..."
ssh $PRODUCTION_SERVER << EOF
    cd $APP_DIR
    git pull origin main
    npm install
    pm2 restart app
EOF

echo "Production Deployment Completed!"
