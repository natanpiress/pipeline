echo "parando aplicaçao para deploy"
docker stop site2 && docker rm site2
echo
echo "inicando aplicaçao"
docker run --name site2 -p 81:80 -d natanpiress/pipeline:4.0
firefox localhost:81 