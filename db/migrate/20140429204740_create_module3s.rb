class CreateModule3s < ActiveRecord::Migration
  def change
    create_table :module3s do |t|
      t.string :name

      t.timestamps
    end
  end
end
