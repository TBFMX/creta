class CreateModule5s < ActiveRecord::Migration
  def change
    create_table :module5s do |t|
      t.string :name

      t.timestamps
    end
  end
end
