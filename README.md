# DB 設計
## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| name               | string              | null: false               |
| kana               | string              | null: false               | 
| birthday           | string              | null: false               |


### Association

* has_many :items
* has_many :purchases
* has_many :shipping addresses
　
## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| nickname                            | references | null: false, foreign_key: true |   
| items name                          | string     | null: false                    | 
| image                               | string     | null: false                    | 
| state                               | string     | null: false                    | 
| postage                             | string     | null: false                    | 
| region                              | string     | null: false                    | 
| shipping_date                       | string     | null: false                    |
| category                            | string     | null: false                    |
| price                               | string     | null: false                    |
| explain                             | text       | null: false                    |   

### Association

- belongs_to :user
- has_many :purchases
- has_many :shipping addresses

## purchases table

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| card name     | string     | null: false                    |
| card type     | string     | null: false                    |
| card number   | string     | null: false                    |
| expire        | string     | null: false                    |
| security code | string     | null: false                    |

### Association

- belongs_to :user
- belongs_to :items

## shipping addresses table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| name        | references | null: false, foreign_key: true |
| post code   | string     | null: false                    |
| state       | string     | null: false                    |
| local city  | string     | null: false                    |
| city        | string     | null: false                    | 
| address 1   | string     | null: false                    |  
| address 2   | string     | null: false                    | 

### Association

- belongs_to :user
- belongs_to :items
