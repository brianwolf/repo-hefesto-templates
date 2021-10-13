PIPELINE ?= pipeline_ejemplo.json
ZIP ?= project.zip
TEMPLATE ?= template_ejemplo.json
PARAMS ?= parametros_ejemplo.json

run-pipeline p:	
	docker run -v $(shell pwd):/tmp brianwolf94/project-hefesto ./exec_pipeline.py -p /tmp/${PIPELINE} -z /tmp/${ZIP}

	
run-template t:
	docker run -v $(shell pwd):/tmp brianwolf94/project-hefesto ./exec_template.py -p /tmp/${PARAMS} -z /tmp/${ZIP} -t /tmp/${TEMPLATE}

update-image u:
	docker pull brianwolf94/project-hefesto