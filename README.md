# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | NOT NULL    |
| password           | string | NOT NULL    |
| name               | string | NOT NULL    |
| profile            | text   | NOT NULL    |
| occupation         | text   | NOT NULL    |
| position           | text   | NOT NULL    |

- has_many :comments
- has_many :prototypes

## comments テーブル

| Column             | Type         | Options     |
| ------------------ | -------------| ----------- |
| text               | text         | NOT NULL    |
| user               | references   | NOT NULL    |
| prototype          | references   | NOT NULL    |

- belongs_to :users
- belongs_to :prototypes

## prototypes テーブル

| Column             | Type         | Options     |
| ------------------ | -------------| ----------- |
| title              | string       | NOT NULL    |
| catch_copy         | text         | NOT NULL    |
| concept            | text         | NOT NULL    |
| user               | references   | NOT NULL    |

- belongs_to :users
- has_many :comments