class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :correo
      t.string :contrasena

      t.timestamps
    end
  end
end
