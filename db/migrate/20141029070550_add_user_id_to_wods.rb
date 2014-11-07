class AddUserIdToWods < ActiveRecord::Migration
  def change
    add_reference :wods, :user, index: true
  end
end
