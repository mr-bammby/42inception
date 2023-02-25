
#! /bin/sh

if [ ! -f "./.first_run" ]; then
	touch .first_run
	# Create self signed certificat
	openssl req -newkey rsa:4096				\
		-x509									\
		-nodes									\
		-out $CERT_NAME.crt	\
		-keyout $CERT_NAME.key	\
		-subj "/C=FR/CN=$DOMAIN_NAME"

	# Edit nginx configuration to fit provided environment
	envsubst < ./temp.conf > /etc/nginx/conf.d/default.conf
fi

