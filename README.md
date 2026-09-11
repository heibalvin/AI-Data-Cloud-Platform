# AIDC
Cloud / Data / AI platform providing services deployed in Docker Desktop.   

Organised as a 3-tier layer architecture: App, Logic, Data.  
 - 3 distinct network layers: app_net, logic_net and data_net.   
 - app_net will be exposed to public internet. 
 - logic_net will serve as a bridge between both. 
 - data_layer will be accessible only to logic_net. (in development phase, data_net could be accessible by app_net)

Each service will have a specific folder:
 - located in either App, Logic or Data.
 - with a docker-compose.yml deployment file.
 - sample.env (needs to be copied to .env) with environement variables.
 - test.sh bash script to test the service.

Default Deployment:
 - root folder: docker-compose to create 3 networks and call sub-folder docker-compose.yml
 - traefix service (called traefic), in App folder, with default parameters.
 - postgres service (called postgres), in Data folder, with default postgres user / passwd and database.
 - postgrest service (called postgrest), in Logic fodler, with default postgres users too. It will setup the traefic to route http://localhost:3000/ to posgrest:3000

 
