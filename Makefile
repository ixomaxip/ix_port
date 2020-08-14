include .env
main: rt up ps push

RM=docker rm -f $(SRV) ||:
rt:
	time docker-compose build $@
push pull down ps logs build:
	time docker-compose $@
log:
	docker-compose logs -f rt
up:
	docker-compose up -d rt
rm:
	$(RM)	

test:
	http :$(PORT)/
