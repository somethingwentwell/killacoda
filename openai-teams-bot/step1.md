## Run the bot using docker

1. Fill MicrosoftAppId, MicrosoftAppPassword, MicrosoftAppTenantId and OPENAI_API_KEY

- Create new Azure Bot Service: https://portal.azure.com/#create/Microsoft.AzureBot
- Create Azure OpenAI service: https://learn.microsoft.com/en-us/azure/cognitive-services/openai/how-to/create-resource?pivots=web-portal

```
nano .env
```{{exec}}

2. Run the bot using Docker:

```
docker run -it -p 3978:3978 --env-file .env warching/openai-teams-bot
```{{exec}}

3. Set the Message Endpoint in Azure Bot configuration.

Message Endpoint: {{TRAFFIC_HOST1_8080}}/api/messages

4. Enable the Teams Channel

5. Click "Open in Teams" then send a message to your bot in Teams, and it should respond with a generated message