class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :name
      t.string :date
      t.string :time
      t.integer :students

      t.timestamps null: false
    end
  end
end
