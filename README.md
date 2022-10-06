# README

## users

|Column            |Type  |Options               |
|------------------|------|----------------------|
<<<<<<< Updated upstream
|nickname          |string|null:false            |
|email             |string|null:false,unique:true|
|encrypted_password|string|null:false            |
=======
|nickname          |string|null:false,unique:true|
|email             |string|null:false,unique:true|
|encrypted_password|string|null:false,unique:true|
>>>>>>> Stashed changes
|last_name         |string|null:false            |
|first_name        |string|null:false            |
|last_name_kana    |string|null:false            |
|first_name_kana   |string|null:false            |
|birthday          |date  |null:false            |

### Association
- has_many:items
- has_many:orders
<<<<<<< Updated upstream


## items
|Column          |Type      |Options                    |
|----------------|----------|---------------------------|
|user            |references|null:false,foreign_key:true|
|name            |string    |null:false                 |
|description     |text      |null:false                 |
|category_id     |integer   |null:false                 |
|status_id       |integer   |null:false                 |
|cost_id         |integer   |null:false                 |
|prefecture_id   |integer   |null:false                 |
|price           |integer   |null:false                 |
|shopping_date_id|integer   |null:false                 |
=======
- has_many:comments


## items
|Column       |Type      |Options                    |
|-------------|----------|---------------------------|
|user         |references|null:false,foreign_key:true|
|name         |string    |null:false                 |
|description  |text      |null:false                 |
|category     |integer   |null:false                 |
|status       |integer   |null:false                 |
|cost         |integer   |null:false                 |
|prefecture   |integer   |null:false                 |
|price        |integer   |null:false                 |
|shopping_date|integer   |null:false                 |
>>>>>>> Stashed changes

### Association
- belongs_to:user
- has_one:order
<<<<<<< Updated upstream



## addresses
|Column       |Type      |Options                    |
|-------------|----------|---------------------------|
|order        |references|null:false,foreign_key:true|
|postcode     |string    |null:false                 |
|prefecture_id|integer   |null:false                 |
|city         |string    |null:false                 |
|block        |string    |null:false                 |
|building     |string    |                           |
|phone_number |string    |null:false                 |


=======
- has_many:comments


## comments
|Column|Type      |Options                    |
|------|----------|---------------------------|
|user  |references|null:false,foreign_key:true|
|item  |references|null:false,foreign_key:true|
|text  |text      |null:false                 |

### Association
- belongs_to:user
- belongs_to:item



## cards
|Column      |Type      |Options                    |
|------------|----------|---------------------------|
|orders      |references|null:false,foreign_key:true|
|postcode    |string    |null:false                 |
|prefecture  |string    |null:false                 |
|city        |string    |null:false                 |
|block       |string    |null:false                 |
|building    |string    |null:false                 |
|phone_number|string    |null:false                 |


>>>>>>> Stashed changes
### Association
- belongs_to:order



## orders
|Column|Type      |Options                    |
|------|----------|---------------------------|
|user  |references|null:false,foreign_key:true|
|item  |references|null:false,foreign_key:true|

### Association
- belongs_to:user
- belongs_to:item
<<<<<<< Updated upstream
- has_one:address
=======
- has_one:card
>>>>>>> Stashed changes
