# ssh-for-deploy
Docker image with alpine linux for easy ssh deploy.

## using
````
DEPLOY_KEY="-----BEGIN RSA PRIVATE KEY-----
#LONG BASE64 SSH PRIVATE KEY
-----END RSA PRIVATE KEY-----"

source /start-deploy

DEPLOY_ADDRESS="root@example.com"

ssh "$DEPLOY_ADDRESS" 'bash -s' < deploy-script.sh
scp my-file "$DEPLOY_ADDRESS:/path/to/dir"
...
````
