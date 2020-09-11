# rails_app

毎回する初期設定や欲しいGemを入れたRailsアプリです。  
https://qiita.com/aiandrox/items/b9d2b1a5f8f02f863567


## バージョン

- Ruby 2.7.1
- Rails 6.0.3.3
- yarn 1.22.5

## セットアップ

```
bundle install
yarn install
```

- データベース

```
rails db:create
rails db:migrate
rake db:seed_fu
```

## コマンド

- 起動

```
bundle exec foreman start
```

- テスト実行

```
bundle exec rspec
```
