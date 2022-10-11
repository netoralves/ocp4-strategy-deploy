#!/bin/bash

oc patch dc/mysql --patch '{"spec":{"strategy":{"recreateParams":{"post":{"failurePolicy": "Abort","execNewPod":{"containerName":"mysql","command":["/bin/sh","-c","curl -L -s https://raw.githubusercontent.com/netoralves/ocp4-strategy-deploy/master/import.sh -o /tmp/import.sh&&chmod 755 /tmp/import.sh&&/tmp/import.sh"]}}}}}}'
