class ChangePrivateColName < ActiveRecord::Migration
  def change
    rename_column :orgs, :private, :private_org
  end
end
