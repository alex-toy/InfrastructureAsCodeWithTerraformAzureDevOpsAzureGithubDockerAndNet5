# Infrastructure As Code With Terraform Azure DevOps Azure Github Docker And Net5

In this project, we will be going through IaC with terraform and Azure DevOps. 


## Create project

<img src="/pictures/create_project.png" title="create project"  width="800">


### Create Dockerfile
```
docker build -t alex/sampleapi . 
docker-compose -f .\docker-compose.yml -f .\docker-compose.override.yml down
docker-compose -f .\docker-compose.yml -f .\docker-compose.override.yml up -d
```
- go to *SampleAPI* : http://localhost:8081/swagger/index.html


### Push local image to Dockerhub
```
docker tag sampleapi dockeralexei/sampleapi:version1
docker push dockeralexei/sampleapi:version1
```

<img src="/pictures/docker_push.png" title="docker push"  width="800">


