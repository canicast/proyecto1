class CreateVenta < ActiveRecord::Migration[5.1]
  def change
    create_table :venta do |t|
      t.numeric :id_flor

      t.timestamps
    end
  end
end
