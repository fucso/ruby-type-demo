# 使用方法
1. プロジェクトのルートディレクトリで以下のコマンドを使用して Docker イメージをビルドします。

```
docker build -t ruby-type-demo .
```

このコマンドは Dockerfile を使用して新しいイメージを作成します。イメージには my_ruby_app というタグ名が付けられますが、任意のタグ名を使用できます。

2. Docker イメージのビルドが完了したら、次のコマンドを使用してコンテナを実行します。

```
docker run -it --rm -v $(pwd):/usr/src/app ruby-type-demo
```

このコマンドはターミナルでコンテナを起動し、対話モードで使用できるようにします。`--name` でコンテナに名前を付けることができます。

3. 特定の Ruby コマンドを実行するには、次のように docker run コマンドに続けてコマンドを指定します。

```
docker run -it --rm ruby-type-demo ruby -e 'puts "Hello, world"'
```