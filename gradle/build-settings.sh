overrideEnvVar PARENT_IMAGE_TAG "latest";
defineEnvVar GRADLE_VERSION MANDATORY "The Gradle version" "6.5";
overrideEnvVar TAG '${GRADLE_VERSION}';
defineEnvVar WORKSPACE MANDATORY "The workspace folder" "/work";
overrideEnvVar ENABLE_LOGSTASH 'false';
defineEnvVar SERVICE_USER MANDATORY "The user account" "${NAMESPACE}";
defineEnvVar SERVICE_GROUP MANDATORY "The group" "users";
defineEnvVar SERVICE_USER_HOME MANDATORY "The home of the service user" '/home/${SERVICE_USER}';
defineEnvVar SERVICE_USER_SHELL MANDATORY "The shell of the service user" '/bin/bash';
defineEnvVar DEFAULT_DOCKER_API_VERSION MANDATORY "The docker API version" "1.23";
# vim: syntax=sh ts=2 sw=2 sts=4 sr noet
