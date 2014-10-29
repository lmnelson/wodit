class AddNameToWods < ActiveRecord::Migration
  def change
    add_column :wods, :name, :string
  end
end
