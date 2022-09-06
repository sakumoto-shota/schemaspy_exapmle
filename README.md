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
  -host ${HOST}:${PORT} -db ${DB} -u ${USER} -p ${PASSWORD} 
```



# 本家GITHUB

for (schemaspy)(https://github.com/schemaspy/schemaspy)


