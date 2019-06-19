## users_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false|
|groups_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :group