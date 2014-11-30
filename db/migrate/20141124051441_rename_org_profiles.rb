class RenameOrgProfilesToOrg < ActiveRecord::Migration

  def change
    rename_table :org_profiles, :org
  end

end
