Clone o repositorio:

```
git clone https://github.com/cs-pedro-azevedo/statsd-sample-config.git
```
Executar o script:
```shell
./stastd.sh
```

Obs: validar se o arquivo "stastd" tem permissão para execução.
```shelll
chmod +x stastd.sh
```

Sequencia de containers criados:
-Carbon
-Statsd
-Graphitweb
Depois disso a aplicação já estará disponível em ** localhost:8125 **.
