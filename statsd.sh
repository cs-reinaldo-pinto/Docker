#!/bin/bash
	
	echo "Criando container carbon"	
	docker run -d -v $(PWD)/whisper/:/opt/graphite/storage/whisper/ --name carbon visity/carbon
	echo "Criando container statsd"
	docker run -d --name statsd --link carbon -p 8125:8125/udp visity/statsd
	echo "Criando container graphiteweb"
	docker run -d --name graphiteweb --link carbon:carbon --volumes-from carbon -p 9119:80 visity/graphiteweb
