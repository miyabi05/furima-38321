# DB 設計
## users table

| Column             | Type                | Options                        |
|--------------------|---------------------|--------------------------------|
| nickname           | references          | null: false, foreign_key: true |
| email              | string              | null: false, unique: true      |
| encrypted_password | string              | null: false                    |
| name               | string              | null: false                    |
| kana               | string              | null: false                    | 
| birthday           | date                | null: false                    |


### Association

* has_many :items
* has_many :purchases
* has_many :shipping_address
　
## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|   
| items_name                          | string     | null: false                    |  
| states_id                           | integer    | null: false                    | 
| postage_id                          | integer    | null: false                    | 
| region_id                           | integer    | null: false                    | 
| shipping_date_id                    | integer    | null: false                    |
| category_id                         | integer    | null: false                    |
| price                               | integer    | null: false                    |
| explain                             | text       | null: false                    |   

### Association

- belongs_to :user
* has_one :purchases

## purchases table

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| user_id       | integer    | null: false                    |
| items_id      | integer    | null: false                    |

### Association

- belongs_to :item
- belongs_to :user
* has_one :shipping address

## shipping addresses table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| post_code   | string     | null: false                    |
| state       | string     | null: false                    |
| local_city  | string     | null: false                    |
| city        | string     | null: false                    | 
| address     | string     | null: false                    |  

### Association

- belongs_to :purchase
- belongs_to :user