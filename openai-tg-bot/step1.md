## Run the bot using docker

1. Fill TG_BOT_TOKEN, OPENAI_NAME, and OPENAI_API_KEY
```
nano .env
```{{exec}}

2. Run the bot using Docker:
```
docker run -it --env-file .env warching/openai-tg-bot
```{{exec}}