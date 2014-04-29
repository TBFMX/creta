class CreateModule4s < ActiveRecord::Migration
  def change
    create_table :module4s do |t|
      t.string :name

      t.timestamps
    end
  end
end
