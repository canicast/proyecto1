class CreateCuenta < ActiveRecord::Migration[5.1]
  def change
    create_table :cuenta do |t|
      t.string :correo
      t.string :contrasena

      t.timestamps
    end
  end
end
