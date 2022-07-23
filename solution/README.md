docker pull fosfordevops/csvgenerator:latest
docker pull prom/prometheus:v2.22.0
git clone https://github.com/Fosfor-DevOps/appserver.git
cd appserver/
cd solution/
docker run -id fosfordevops/csvgenerator:latest /bin/bash
docker ps
docker exec -it <container-id> /bin/bash
vi gencsv.sh
inside gencsv.sh > 
1.touch inputFile
2. echo "0, 234
1, 98
2, 34" > inputFile
To exit from vi editor-> esc > :wq

sh gencsv.sh