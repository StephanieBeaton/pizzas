# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pizza1 = Pizza.create(name: "Survivors, Kill", price:45)

topping1 = Topping.create(name: "Sour patch kids")

pizza_topping1 = PizzasTopping.create(pizza_id: 1, topping_id: 1)

topping2 = Topping.create(name: "Cauliflower")

pizza_topping2 = PizzasTopping.create(pizza_id: 1, topping_id: topping2.id)

#@order = @customer.orders.create(order_date: Time.now)
topping1 = pizza1.toppings.create( name: "Sour patch kids")

topping2 = pizza1.toppings.create( name: "Cauliflower")

 # =========================================================

pizza2 = Pizza.create(name: "Creek Mirror", price:932)
topping21 = pizza1.toppings.create( name: "Oysters")

topping22 = pizza1.toppings.create( name: "Quesadilla")

 # =========================================================

pizza2 = Pizza.create(name: "Creek Mirror", price:932)
topping21 = pizza1.toppings.create( name: "Oysters")

topping22 = pizza1.toppings.create( name: "Quesadilla")

# =========================================================
pizza3 = Pizza.create(name: "The Lightning that Could Not Trick", price:689)
topping31 = pizza1.toppings.create( name: "Quesadilla")

# =========================================================

pizza_array = [
{
id: "e3f34de8-790c-494f-a719-0aa68a4b5d59",
name: "The Lightning that Could Not Trick",
price: 6.899388,
toppings: [
{
id: "8772b01a-357c-46af-b142-135db1c0694d",
name: "Quesadilla"
}
]
},
{
id: "577c221f-b361-4658-b087-99460a87346d",
name: "The Door of the Lead Tiger",
price: 4.7881184,
toppings: [
{
id: "aa1421fc-bcb1-4580-8e8c-58f85e02365e",
name: "BBQ"
},
{
id: "22bd31cc-d40d-408c-8925-0bdce068a557",
name: "Pecan Cookies"
}
]
}
]

toppings_array =
[
{
id: "9a18b62b-5403-4eff-a4d7-21025888c4eb",
name: "Quesadilla"
},
{
id: "aa1421fc-bcb1-4580-8e8c-58f85e02365e",
name: "BBQ"
},
{
id: "b0e32bcb-0dc6-4134-a4ac-9ba2a4cae231",
name: "Sweet and Sour Chicken"
},
{
id: "bb3f80d3-0382-4ba3-b636-a2b7b05d4de1",
name: "Pecan Cookies"
}
]

#  iterate thru toppins_array inserting toppings into database
toppings_array.each do | topping |

   Topping.create( name: topping.name)
end

#  iterate thru pizza_array, creating Pizzas
#  ... for each pizza, iterate thru the toppings, find the toppind id in database

pizza_array.each do | pizza |

   my_pizza = Pizza.create( name: pizza.name,  price: pizza.price )

   pizza.toppings.each do | topping |

      my_topping = Topping.find_by( name: topping.name )

      PizzasTopping.create(pizza_id: my_pizza.id, topping_id: my_topping.id )
   end
end
