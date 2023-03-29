## Run the bot using docker

### 1. Fill MicrosoftAppId, MicrosoftAppPassword, MicrosoftAppTenantId and OPENAI_API_KEY

- Create new Azure Bot Service: https://portal.azure.com/#create/Microsoft.AzureBot
- Create Azure OpenAI service: https://learn.microsoft.com/en-us/azure/cognitive-services/openai/how-to/create-resource?pivots=web-portal

```
nano .env
```{{exec}}


### 2. Run the bot using Docker Compose:

```
docker-compose up -d
```{{exec}}

or

```
docker compose up -d
```{{exec}}


### 3. Test the API

Observe the log by:

```
docker logs root-test-lc-api-1 --follow
```{{exec}}

Test the API:

```
curl --location --request POST 'http://127.0.0.1:8000/run' \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "Hi Im Ada",
    "id": "ada"
}'
```{{exec}}

```
curl --location --request POST 'http://127.0.0.1:8000/run' \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "what kind of Sports I can play in PolyU?",
    "id": "ada"
}'
```{{exec}}

```
curl --location --request POST 'http://127.0.0.1:8000/run' \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "Do you remember what my name is?",
    "id": "ada"
}'
```{{exec}}

```
curl --location --request POST 'http://127.0.0.1:8000/run' \
--header 'Content-Type: application/json' \
--data-raw '{
    "text": "Do you remember what my name is?",
    "id": "bob"
}'
```{{exec}}




### 4. Set the Message Endpoint in Azure Bot configuration.

Message Endpoint: {{TRAFFIC_HOST1_3978}}/api/messages


### 5. Enable the Teams Channel


### 6. Click "Open in Teams" then send a message to your bot in Teams, and it should respond with a generated message