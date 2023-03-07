## Run the bot using docker

### 1. Fill TG_BOT_TOKEN, OPENAI_NAME, and OPENAI_API_KEY

- Create new Telegram bot: https://telegram.me/botfather
- Create Azure OpenAI service: https://learn.microsoft.com/en-us/azure/cognitive-services/openai/how-to/create-resource?pivots=web-portal

```
nano .env
```{{exec}}


### 2. Run the bot using Docker:

```
docker run -it --env-file .env warching/openai-tg-bot
```{{exec}}


### 3. Send a message to your bot in Telegram, and it should respond with a generated message