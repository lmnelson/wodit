class DropWodsTable < ActiveRecord::Migration
  def up
    drop_table :wods
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
