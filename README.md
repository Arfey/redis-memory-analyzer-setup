# Redis memory analyze (from dump.rdb)

### Setup:

- Copy the `rdb` file into the `redis` directory
- Rename it to be `dump.rdb`
- Run `docker-compose up` or `make`

After that u can exect to the pod:

```
docker exec -it redis_redis_1 bash
```

Now u can connect to the redis use `redis-cli` or use follow tools for analyze
dumps (if u know other awesome tools feel free to contribute):

### [rdbtools](https://github.com/sripathikrishnan/redis-rdb-tools)

```
rdb -c memory /data/dump.rdb --bytes 128 --db 4 -f memory.csv
cat memory.csv
```

### [redis memory analyzer](https://github.com/gamenet/redis-memory-analyzer)

```
rma -b scanner -d 4
```

**Base on**: https://github.com/assafshomer/docker-redis-restore
