run:
	@echo 'Start redis'
	@docker-compose up

down:
	@docker-compose down -v

exec:
	@docker exec -it redis_redis_1 redis-cli

bash:
	@docker exec -it redis_redis_1 bash
