class DropOrgProfile < ActiveRecord::Migration
  def up
    drop_table :org_profile
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

