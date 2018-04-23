# tg-3proxy-docker
The Docket 3proxy container configured specially for Telegram

# Run docker container
```
bash-4.4$ docker run -d -t -i -e SERVER=$(dig +short myip.opendns.com @resolver1.opendns.com) -e USER='testuser' -e PASSWORD='testpassword' -p 3128:3128 --name tg_3proxy beshkenadze/tg-3proxy-docker
```

# Run docker-compose
```
bash-4.4$ git clone https://github.com/beshkenadze/tg-3proxy-docker
bash-4.4$ cd tg-3proxy-docker
bash-4.4$ docker-compose -f docker-compose-prod.yml up -d
```

# How to use?
* In the log, will show the link that you want to open

```bash-4.4$ docker logs tg_3proxy```

![Example](https://raw.githubusercontent.com/beshkenadze/tg-3proxy-docker/master/example.png)
