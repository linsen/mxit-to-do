class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.integer :priority
      t.date :date

      t.timestamps
    end
  end
end
