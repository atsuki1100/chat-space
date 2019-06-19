class CreateUsersGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :users_groups do |t|
      t.integer :users_id
      t.integer :groups_id
      t.timestamps
    end
  end
end
