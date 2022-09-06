# schemaspyを使って効率よくドキュメントを作成

## 梱包内容

- Dockerfile
  - 日本語化
- shcema.sh #mac / linux用ワンショットコマンド
- .env.sample

## Mac / Linuxでの実行方法

```:shell
$ cp .env.sample .env
$ vim .env
※環境に応じて書き換えてください
HOST=
PORT=
DB=
USER=
PASSWORD=
$ bash shcema.sh
```

outputディレクトリができているのでindex.htmlがあれば、ドキュメントの完成です


## Windowsの場合は下記コマンドで実行してください。

```:shell
docker run \
  -v $PWD/output:/output \
  --net=host \
  schemaspy/japanese:ipaexg00201 \
  -v $PWD/output:/output \
  -v $PWD/schemaspy.properties:/schemaspy.properties \
  -t pgsql \
  -host ${HOST}:${PORT} -db ${DB} -u ${USER} -p ${PASSWORD} -s ${DB}
```

### wordpress DBのテスト

```:shell
$ docker-compose --file docker-compose-wordpress.yml up -d
echo "DBTYPE=mysql
HOST=localhost
PORT=3333
DB=wordpress
USER=wordpress
PASSWORD=wordpress" > .env
$ bash schema.sh 
WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested
Using drivers:jtds-1.3.1.jar, mariadb-java-client-1.1.10.jar
mysql-connector-java-8.0.28.jar, postgresql-42.3.5.jar
  ____       _                          ____
 / ___|  ___| |__   ___ _ __ ___   __ _/ ___| _ __  _   _
 \___ \ / __| '_ \ / _ \ '_ ` _ \ / _` \___ \| '_ \| | | |
  ___) | (__| | | |  __/ | | | | | (_| |___) | |_) | |_| |
 |____/ \___|_| |_|\___|_| |_| |_|\__,_|____/| .__/ \__, |
                                             |_|    |___/

                                              6.1.1-SNAPSHOT
```


# 本家GITHUB

for [schemaspy](https://github.com/schemaspy/schemaspy)


# example
[author xshsaku](https://blog.foodit.co.jp/)
