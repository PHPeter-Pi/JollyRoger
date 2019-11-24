# Jolly Roger

Docker ネットワーク内の HTTP 接続を外部に公開するだけのコンテナです。[Serveo](https://serveo.net/) の技術を使っています。

このコンテナを使うと、このコンテナと同じ Docker ネットワーク内の別のコンテナの Web API や HTTP 接続を一般に公開できます。

## 必須条件

対象となる Web API のコンテナ名（ホスト名）と待ち受けポートを環境変数としてコンテナ起動時に渡す必要があります。

```bash
docker build -t jollyroger .
docker run --rm --detach --name jollyroger --env NAME_HOST_API=<コンテナ名> PORT_HOST_API=<ポート番号> jollyroger
docker logs jollyroger
```
