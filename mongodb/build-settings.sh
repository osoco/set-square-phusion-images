overrideEnvVar PARENT_IMAGE_TAG "latest";

defineEnvVar MONGODB_MAJOR_VERSION MANDATORY "The MongoDB version" "4";
defineEnvVar MONGODB_MINOR_VERSION MANDATORY "The MongoDB version" "0";
defineEnvVar MONGODB_PATCH_VERSION MANDATORY "The MongoDB version" "27"
defineEnvVar MONGODB_VERSION MANDATORY "The MongoDB version" '${MONGODB_MAJOR_VERSION}.${MONGODB_MINOR_VERSION}.${MONGODB_PATCH_VERSION}'

overrideEnvVar TAG '${MONGODB_VERSION}';
defineEnvVar REPLICA_SET_NAME MANDATORY "The name of the replica set" '${NAMESPACE}';
defineEnvVar SERVICE_USER MANDATORY "The service user" "mongodb";
defineEnvVar SERVICE_USER_PASSWORD MANDATORY "The password of the service user" "${RANDOM_PASSWORD}";
defineEnvVar SERVICE_GROUP MANDATORY "The service group" "mongodb";
defineEnvVar SERVICE_USER_HOME MANDATORY "The home of the service user" '/backup/${IMAGE}';
defineEnvVar SERVICE_USER_SHELL MANDATORY "The shell of the service user" "/bin/bash";
#
