class CreateModule2s < ActiveRecord::Migration
  def change
    create_table :module2s do |t|
      t.string :name

      t.timestamps
    end
  end
end
