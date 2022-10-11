#!/bin/bash

oc patch dc/mysql --patch '{"spec":{"strategy":{"recreateParams":{"post":{"failurePolicy": "Abort","execNewPod":{"containerName":"mysql","command":["/bin/sh","-c","curl -L -s https://github.com/XXX -o /tmp/import.sh&&chmod 755 /tmp/import.sh&&/tmp/import.sh"]}}}}}}'
