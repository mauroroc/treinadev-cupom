class CreateProductCategoriys < ActiveRecord::Migration[6.1]
  def change
    create_table :product_categoriys do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
