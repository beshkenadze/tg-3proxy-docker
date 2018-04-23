# tg-3proxy-docker
The Docket 3proxy container configured specially for Telegram

# Run docker container
```
bash-4.4$ docker run -d -t -i -e SERVER='localhost' -e USER='testuser' -e PASSWORD='testpassword' -p 3128:3128 --name tg_3proxy beshkenadze/tg-3proxy-docker
```

# Run docker-compose
```
bash-4.4$ git clone https://github.com/beshkenadze/tg-3proxy-docker
bash-4.4$ cd tg-3proxy-docker
bash-4.4$ docker-compose -f docker-compose-prod.yml up -d
```
