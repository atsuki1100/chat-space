## users_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|users_id|references|null: false, foreign_key: true|
|groups_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many :messages
- has_many :users_groups
- has_many :groups, through: :users_groups


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many :messages
- has_many :users_groups
- has_many :users, through: :users_groups


## messageテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|group_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group