class CreateModule1s < ActiveRecord::Migration
  def change
    create_table :module1s do |t|
      t.string :name

      t.timestamps
    end
  end
end
