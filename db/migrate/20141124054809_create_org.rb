class CreateOrg < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.text :description
      t.boolean :private

      t.timestamps
    end
  end
end
