class CreateFlors < ActiveRecord::Migration[5.1]
  def change
    create_table :flors do |t|
      t.string :nombre
      t.string :url
      t.text :descripcion
      t.numeric :precio

      t.timestamps
    end
  end
end
