docker build -t jarzamendia/sysbench:latest .

docker run -it -e CPU_MAXPRIME=20000 jarzamendia/sysbench:latest cpu


## azure.sh
Envia os arquivos para um fileshare no Azure.
