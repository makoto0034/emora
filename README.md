# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* 初期データの投入について

* 初期データを投入にはseedを読み込ませる必要がありますが、データ量が多いのでseedを分割して保存しています。
* 最低限のデータだけ投入する場合はrails db:seed:harugakki1をターミナルで回してください。

* herokuにデプロイ済み　https://emora.herokuapp.com

* ゲストユーザー　メールアドレス：emora@rikkyo.ac.jp パスワード：emora123

* アプリ名　Emora

* Overview
* こちらのアプリは立教大学生限定のアプリです。

* このアプリは以下の三点を行えるアプリです。
* ・講義のシラバス検索
* ・時間割管理
* ・掲示板

* Technology
* バックエンド    Ruby on Rails
* フロントエンド  jQuery
* インフラ        heroku
