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



 テーブル設計

## form テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| comment            | text   | null: false |


### Association

## foods テーブル

| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| title           | string     | null: false |
| money           | string     | null: false |
| concept         | text       | null: false |
| image           | ActiveStorageで実装       |
| genre           | string     | null: false |


### Association

- has_many :comments

## comments テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| nickname        | string | null: false,                   |
| comment         | text   | null: false,                   |
### Association

- belongs_to :food

ログイン機能を実装して管理者だけが商品投稿、編集、削除機能を使えるよう実装しました。
cssはブートストラップで実装。



<!-- レンダーでカテゴリをさらに分ける -->
<!-- jsでカテゴリに動きをつける -->