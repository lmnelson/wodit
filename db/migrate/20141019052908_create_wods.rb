class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.text :description
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
