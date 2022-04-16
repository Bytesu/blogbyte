##redis

- `docker pull redis`
- `docker run --name redis-server -d redis redis-server -v /Users/suweiming/codes/docker/share/redis:/data --save 60 1 --loglevel warning`
- `docker run -p 6379:6379 --name myredis -v /Users/suweiming/projects/test/blogbyte/docker/redis.conf:/etc/redis/redis.conf -v /Users/suweiming/codes/docker/share/redis:/data -d redis redis-server /etc/redis/redis.conf --appendonly yes`

ref: https://juejin.cn/post/6844904185222135815