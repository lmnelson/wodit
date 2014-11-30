class AddUserIdToOrgs < ActiveRecord::Migration
  def change
    add_reference :orgs, :user, index: true
  end
end
