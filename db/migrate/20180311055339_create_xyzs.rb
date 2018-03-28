class CreateXyzs < ActiveRecord::Migration[5.1]
  def change
    create_table :xyzs do |t|
      t.string :name

      t.timestamps
    end
  end
end
