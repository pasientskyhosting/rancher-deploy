# rancher-deploy
Based on the rancher deployment script from https://github.com/etlweather/gaucho - added a few options like finishupgrade and rollback. Also the option to do requests to https endpoints with self signed certificates

### Rancher Host, Access Key and Secret

It needs to know the Rancher host and must be given an access key and access
secret to be able to interact with the Rancher's API. This can be done through
environment variables:

   - `RANCHER_ACCESS_KEY`
   - `RANCHER_SECRET_KEY`
   - `RANCHER_URL`
   - `RANCHER_VERIFY_SSL`
   - `SERVICE_ID`

# Credits
https://github.com/etlweather/gaucho
