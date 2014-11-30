class DropOrg < ActiveRecord::Migration
  def up
    drop_table :org
  end

  def down
    create_table :org do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :user
  end
end
