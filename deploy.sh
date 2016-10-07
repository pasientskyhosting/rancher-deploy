#!/bin/bash
export RANCHER_ACCESS_KEY=
export RANCHER_SECRET_KEY=
export RANCHER_URL=
export RANCHER_VERIFY_SSL=True
export SERVICE_ID=

# Start upgrade process of containers
./rancher-service.py upgrade ${SERVICE_ID}
upgrade_ok=$?

if [ $upgrade_ok -eq 0 ]; then

    # Now verify the new containers are working propperly
    ./rancher-service.py finishupgrade ${SERVICE_ID}
    finishupgrade_ok=$?

    # If timeout exceeds, and something went wrong, then rollback
    #sleep 5
    #./rancher-service.py rollback ${SERVICE_ID}
    rollback_ok=$?

else
    exit 1
fi

exit 0
