defineEnvVar REGISTRY MANDATORY "cloud.docker.com";
overrideEnvVar SETSQUARE_FLAVOR "phusion";
overrideEnvVar LICENSE_FILE "LICENSE.gpl3";
overrideEnvVar COPYRIGHT_PREAMBLE_FILE "copyright-preamble.gpl3";
defineEnvVar DATE MANDATORY "The date format used to tag images" "$(date '+%Y%m')";
defineEnvVar TIME MANDATORY "A timestamp" "$(date)";
defineEnvVar RANDOM_PASSWORD MANDATORY "A random password" "secret" 'head -c 20 /dev/urandom | sha1sum | cut -d' ' -f1';
defineEnvVar PUSH_TO_DOCKERHUB MANDATORY "Whether to push to Docker HUB" 'false';
defineEnvVar BUILDER MANDATORY "The builder of the image" '${AUTHOR}';
defineEnvVar SETSQUARE_FLAVOR MANDATORY "The flavor of set-square" "phusion";
defineEnvVar INCLUDES_FOLDER MANDATORY "The folder where 'include' files are located" "./.templates";
defineEnvVar ROOT_IMAGE_VERSION MANDATORY "The root image version" "0.11";
defineEnvVar ROOT_IMAGE MANDATORY "The default root image" "phusion/baseimage"
defineEnvVar ROOT_IMAGE_64BIT MANDATORY "The default root image for 64 bits" '${ROOT_IMAGE}';
defineEnvVar ROOT_IMAGE_32BIT MANDATORY "The default root image for 32 bits" "${ROOT_IMAGE_64BIT_DEFAULT}32";
defineEnvVar BASE_IMAGE_64BIT MANDATORY "The base image for 64 bits" '${NAMESPACE}-${SETSQUARE_FLAVOR}/base';
defineEnvVar BASE_IMAGE_32BIT MANDATORY "The base image for 32 bits" '${BASE_IMAGE_64BIT_DEFAULT%%64}32';
defineEnvVar JAVA_VERSION MANDATORY "The Java version" "8";
defineEnvVar SYSTEM_UPDATE \
             MANDATORY \
             "The script to update the package catalog" \
             '/usr/local/sbin/system-update.sh -v ';
defineEnvVar PKG_INSTALL \
             MANDATORY \
             "Installs a program via apt-get" \
             '/usr/local/sbin/pkg-install.sh -vv ';
defineEnvVar PKG_CLEANUP \
             MANDATORY \
             "The cleanup commands after an apt-get so that the resulting image size is optimal" \
             '/usr/local/sbin/pkg-cleanup.sh -v ';
defineEnvVar SYSTEM_CLEANUP \
             MANDATORY \
             "The cleanup commands after an apt-get so that the resulting image size is optimal" \
             '/usr/local/sbin/system-cleanup.sh -v ';
defineEnvVar SMTP_HOST \
             MANDATORY \
             "The SMTP host to send emails, including monit's" \
             'mail.${DOMAIN}';
defineEnvVar LDAP_HOST \
             MANDATORY \
             "The LDAP host to authorize and/or authenticate users" \
             'ldap.${DOMAIN}';
defineEnvVar BACKUP_HOST_SUFFIX \
             MANDATORY \
             "The prefix of the backup host to send the backup files" \
             '-backup.${DOMAIN}';
defineEnvVar BACKUP_USER MANDATORY "The backup user" "backup";
defineEnvVar SSHPORTS_FILE \
             MANDATORY \
             "The file with the SSH port mappings" \
             "sshports.txt";
defineEnvVar CUSTOM_BACKUP_SCRIPTS_FOLDER \
             MANDATORY \
             "The folder with the custom backup scripts" \
             "/usr/local/bin";
defineEnvVar CUSTOM_BACKUP_SCRIPTS_PREFIX MANDATORY "The prefix of all custom backup scripts" "backup-";
defineEnvVar BACKUP_USER MANDATORY "The backup user" "backup";
defineEnvVar BACKUP_GROUP MANDATORY "The backup group" '${BACKUP_USER}';
defineEnvVar MONIT_HTTP_PORT \
             MANDATORY \
             "The port used by Monit's webapp" \
             "2812";
defineEnvVar MONIT_HTTP_USER \
             MANDATORY \
             "The user to login in monit's webapp" \
             "monit";
defineEnvVar MONIT_HTTP_PASSWORD \
             MANDATORY \
             "The password to login in monit's webapp" \
             '${RANDOM_PASSWORD}' \
             "head -c 20 /dev/urandom | sha1sum | cut -d' ' -f1";
defineEnvVar MONIT_HTTP_TIMEOUT \
             MANDATORY \
             "The timeout before alerting that monit's own http interface is down" \
             "15 seconds";
defineEnvVar MONIT_ALERT_EMAIL \
             MANDATORY \
             "The email address to send alerts to" \
             '${AUTHOR_EMAIL}';
defineEnvVar ENABLE_SSH MANDATORY "Whether to enable SSH by default" "false";
defineEnvVar ENABLE_MONIT MANDATORY "Whether to enable Monit" "true";
defineEnvVar ENABLE_SYSLOG MANDATORY "Whether to enable syslog" "true";
defineEnvVar ENABLE_CRON MANDATORY "Whether to enable cron" "true";
defineEnvVar ENABLE_RSNAPSHOT MANDATORY "Whether to enable rsnapshot" "true";
defineEnvVar ENABLE_LOCAL_SMTP MANDATORY "Whether to run a local SMTP server" "true";
defineEnvVar ENABLE_LOGSTASH \
             MANDATORY \
             "Whether to enable logstash, if available for the specific image" \
             "true";
defineEnvVar BUILDER MANDATORY "The builder of the image" '${AUTHOR}';
defineEnvVar SSL_KEY_ENCRYPTION MANDATORY "The encryption of the key" "des3";
defineEnvVar SSL_KEY_ALGORITHM MANDATORY "The algorithm of the SSL key" "rsa";
defineEnvVar SSL_KEY_LENGTH MANDATORY "The length of the SSL key" "2048";
defineEnvVar SSL_KEY_FOLDER MANDATORY "The folder storing the SSL key pairs" "/etc/ssl/private";
defineEnvVar SSL_KEY_PASSWORD MANDATORY "The key password" 'K8emqG04hZKlOUY3rET1ZBChtqFuERxyWAtyVtnVrP1MYMXhA8SPhdBJ';
defineEnvVar SSL_CERTIFICATE_ORGANIZATIONAL_UNIT MANDATORY "The organizational unit for the SSL certificate" "IT";
defineEnvVar SSL_CERTIFICATE_ORGANIZATION MANDATORY "The organization behind the SSL certificate" '${DOMAIN}';
defineEnvVar SSL_CERTIFICATE_ALIAS MANDATORY "The certificate alias" '${IMAGE}';

defineEnvVar SSL_CERTIFICATE_STATE MANDATORY "The state information in the SSL certificate" "Madrid";
defineEnvVar SSL_CERTIFICATE_COUNTRY MANDATORY "The country information in the SSL certificate" "ES";
defineEnvVar SSL_CERTIFICATE_EXPIRATION_DAYS MANDATORY "The number of days until the certificate expires" "3650";
defineEnvVar SSL_KEYSTORE_PASSWORD MANDATORY "The keystore password" 'nmGEQlbT2qnCrBsfQDGFkygj8exgEmTCvmc1KSQ8VebBh5';
defineEnvVar SSL_KEYSTORE_FOLDER MANDATORY "The folder storing the SSL keystore" '${SSL_KEY_FOLDER}';
defineEnvVar SSL_KEYSTORE_TYPE MANDATORY "The type of the keystore" "jks";
defineEnvVar SSL_JAVA_SIGN_ALGORITHM MANDATORY "The algorithm used to sign the SSL certificate" "SHA256withRSA";
defineEnvVar HOST_VOLUMES_ROOT_FOLDER MANDATORY "The root folder for host volumes" "/var/lib/docker/data";
defineEnvVar DEVELOPMENT_USER_ID MANDATORY "The user id used when developing code (to match host user id)" "$(id -u)";
# vim: syntax=sh ts=2 sw=2 sts=4 sr noet
