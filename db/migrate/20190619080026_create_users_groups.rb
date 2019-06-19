class CreateUsersGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :users_groups do |t|
      t.references :users, null: false, foreign_key: true
      t.references :groups, null: false, foreign_key: true
      t.timestamps
    end
  end
end
