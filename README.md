# rancher-deploy
Added a few options like finishupgrade and rollback. Also the option to do requests to https endpoints with self signed certificates

## Usage
Rancher-Deploy can be run directly on a command line provided you have Python installed
as well as the dependencies listed below.

```
pip install requests
pip install baker
```

### Rancher Host, Access Key and Secret
It needs to know the Rancher host and must be given an access key and access
secret to be able to interact with the Rancher's API. This can be done through
environment variables:

   - `RANCHER_ACCESS_KEY`
   - `RANCHER_SECRET_KEY`
   - `RANCHER_URL`
   - `RANCHER_VERIFY_SSL`
   - `SERVICE_ID`

## Extra commands
The following extra commands has been added to the service script

### finishupgrade
```
Usage: ./services.py finishupgrade <service_id> 

Finishing the upgrade

    Performs a finish on the service upgrade.

Required Arguments:

  service_id   The ID of the service to finish upgrade on.
```

### rollback
```
Usage: ./services.py rollback <service_id>

Finishing the upgrade

    Performs a rollback on the service just upgraded.

Required Arguments:

  service_id   The ID of the service to rollback.
```


# Credits
Based on the rancher upgrade script from https://github.com/etlweather/gaucho
