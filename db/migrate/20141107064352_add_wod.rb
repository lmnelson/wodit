class AddWod < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string  :name
      t.text    :description
      t.date    :date
      t.time    :time

      t.references :user, index: true

      t.timestamps
    end
  end
end
