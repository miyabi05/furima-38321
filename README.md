# DB 設計
## users table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| nickname           | string              | null: false                    |
| email              | string              | null: false, unique: true      |
| encrypted_password | string              | null: false                    |
| last_name          | string              | null: false                    |
| first_name         | string              | null: false                    | 
| last_name_kana     | string              | null: false                    |
| first_name_kana    | string              | null: false                    |
| birthday           | date                | null: false                    |


### Association

* has_many :items
* has_many :purchases
　
## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|   
| items_name                          | string     | null: false                    |  
| state_id                            | integer    | null: false                    | 
| postage_id                          | integer    | null: false                    | 
| region_id                           | integer    | null: false                    | 
| shipping_date_id                    | integer    | null: false                    |
| category_id                         | integer    | null: false                    |
| price                               | integer    | null: false                    |
| explain                             | text       | null: false                    |   
| user_id                             | integer    | null: false, foreign_key:true  |                  

### Association

- belongs_to :user
* has_one :purchase

## purchases table

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
* has_one :shipping address

## shipping addresses table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| post_code   | string     | null: false                    |
| region_id   | integer    | null: false                    |
| local_city  | string     | null: false                    |
| city        | string     | null: false                    | 
| address     | string     | null: false                    |  
| phone_number| string     |                                |

### Association

- belongs_to :purchase