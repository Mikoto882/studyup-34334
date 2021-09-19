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

## userテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |
| old                | string  | null: false |
| grade_id           | integer | null: false |
| birthday           | date    | null: false |

### Association

- has_many :studies
- has_many :comments

## studyテーブル

| Column      | Type      | Option            |
| ----------- | --------- | ----------------- |
| title       | string    | null: false       |
| description | text      | null: false       |
| time        | date      | null: false       |
| subject     | integer   | null: false       |
| evaluation  | integer   | null: false       |
| user        | reference | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## commentテーブル

| Column  | Type      | Option            |
| ------- | --------- | ----------------- |
| content | string    | null: false       |
| user    | reference | foreign_key: true |
| study   | reference | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :study