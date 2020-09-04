#
# Enter app specifics in this file.
#

# Cluster level variables:
# ------------------------
# BASE_DIR - padogrid base dir
# ETC_DIR - Cluster etc dir

# App level variables:
# --------------------
# APPS_DIR - <padogrid>/apps dir
# APP_DIR - App base dir
# APP_ETC_DIR - App etc dir

#
# Follow the instructions in README.md using the following environment variable.
#
export HAZELCAST_OPENSHIFT_DIR=$PADOGRID_WORKSPACE/k8s/oc_operator

#
# Default Kubernetes (OpenShift) project names.
#
export PROJECT_WAN1="wan1"
export PROJECT_WAN2="wan2"
