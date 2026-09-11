# AIDC
Cloud / Data / AI platform providing services deployed in Docker Desktop.   

Organised as a 3-tier layer architecture:
 - App
 - Logic
 - Data
We will have 3 distinct network layers: app_net, logic_net and data_net.   
Only app_net will be exposed to public internet. logic_net will serve as a REST_API bridge between both. And data_layer will be accessible to logic_net. In rare occasion, or development phase only, data_net will be accessible directly to app_net.

Each service will have their own folder containing a docker-compose.yml and also a sample.env (needs to be copied to .env and udpated). Provide also a bash script test.sh to test the service. These folders will be organised by layer too: App, Logic, Data.

Phases:
 - docker-compose in root folder to creat 3 networks: app_net, logic_net and data_net
 - postgres service (called postgres), in Data folder, with default postgres user / passwd and database.
 - postgrest service (called postgrest), in Logic fodler, with default postgres users too.
