class CreatePizzasAndToppings < ActiveRecord::Migration
    def change
      create_table :pizzas do |t|
        t.string :name
        t.integer :price

        t.timestamps null: false
      end

      create_table :toppings do |t|
        t.string :name

        t.timestamps null: false
      end

      create_table :pizzas_toppings, id: false do |t|
        t.belongs_to :pizza, index: true
        t.belongs_to :topping, index: true
      end

      add_foreign_key :pizzas_toppings, :pizzas
      add_foreign_key :pizzas_toppings, :toppings

    end
end
