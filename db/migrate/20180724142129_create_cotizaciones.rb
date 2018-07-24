class CreateCotizaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :cotizaciones do |t|
      t.string :token
      t.string :paqueteria
      t.string :producto
      t.string :precio

      t.timestamps
    end
  end
end
