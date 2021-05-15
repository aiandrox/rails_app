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

[【Rails】MySQL2がbundle installできない時の対応方法 \- Qiita](https://qiita.com/fukuda_fu/items/463a39406ce713396403)

MySQLでエラー↓↓

```sh
~/p/rails_app master ❯❯❯ brew info openssl                                                                                                                                   ✘ 5
openssl@1.1: stable 1.1.1j (bottled) [keg-only]
Cryptography and SSL/TLS Toolkit
https://openssl.org/
/usr/local/Cellar/openssl@1.1/1.1.1j (8,071 files, 18.5MB)
  Poured from bottle on 2021-03-12 at 17:56:18
From: https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/openssl@1.1.rb
License: OpenSSL
==> Caveats
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because macOS provides LibreSSL.

If you need to have openssl@1.1 first in your PATH, run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

For pkg-config to find openssl@1.1 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

==> Analytics
install: 782,442 (30 days), 2,633,871 (90 days), 8,812,477 (365 days)
install-on-request: 58,424 (30 days), 257,430 (90 days), 1,140,537 (365 days)
build-error: 0 (30 days)

~/p/rails_app master ❯❯❯ bundle config --local build.mysql2 "--with-cppflags=-I/usr/local/opt/openssl@1.1/include"
~/p/rails_app master ❯❯❯ bundle config --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib"
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
