#/bin/bash

if ps -ef | grep demo-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}'
then
  echo "Killing existing process"
  kill -9 $(ps -ef | grep demo-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{print $2}')
fi

if nohup java -jar -Dserver.port=8081 target/demo-0.0.1-SNAPSHOT.jar &
then
  echo "Deployed New Application"
fi
