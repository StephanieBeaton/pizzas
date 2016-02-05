# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# =========================================================

# require_relative "toppings.rb"

toppings_array = [
{
id: "9a18b62b-5403-4eff-a4d7-21025888c4eb",
name: "Oysters"
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
name: "Cauliflower"
},
{
id: "1b2217c6-92f4-4180-8dde-164d500ee296",
name: "Angel Food Cake"
},
{
id: "8b4fe9a0-de4e-4cf2-b41a-52cc842a1f79",
name: "Lobster"
},
{
id: "c36b6eec-e484-47da-8503-7aea9619ad7e",
name: "Coke"
},
{
id: "22bd31cc-d40d-408c-8925-0bdce068a557",
name: "Pecan Cookies"
},
{
id: "51486dab-5d9b-445d-8c1e-2655b0c28332",
name: "Jelly Beans"
},
{
id: "6546dd98-3243-4265-a76b-d25b42c75c15",
name: "Fish sticks/patties"
},
{
id: "b1bf1e86-1db9-4aed-b6b2-56a84c4b593f",
name: "Snickerdoodles"
},
{
id: "3c6eb5f1-1678-4a2e-9844-819cc036926f",
name: "Tuna"
},
{
id: "8772b01a-357c-46af-b142-135db1c0694d",
name: "Quesadilla"
},
{
id: "b5f5eacd-3c35-4ad3-b030-2adecf044073",
name: "Fried clams"
},
{
id: "5ed80a6f-6ed4-4742-ac00-a3fe0b44bf01",
name: "Ribs"
},
{
id: "53d9422b-7b06-46b6-8d87-16d884b3246d",
name: "Cheetoes"
},
{
id: "fee41b03-00aa-4a7a-bb6a-48c78aa8a79f",
name: "Rice"
},
{
id: "292efdae-1683-4822-bb87-1dab2ea67884",
name: "Crab"
},
{
id: "b5eacd25-8fda-43d3-91e5-0c3fcf56c5d8",
name: "Mike and Ikes"
},
{
id: "a45a47b7-592c-45c0-92e8-80b250595c8e",
name: "Sour patch kids"
},
{
id: "d23da3e3-84ad-44cd-abf8-68f9a12b7f02",
name: "Pizza"
},
{
id: "923b4edf-b37c-4062-983b-788118757a83",
name: "Chocolate cake"
},
{
id: "5ed983aa-343d-4058-8e4d-c49caaa41f71",
name: "Cotton Candy"
},
{
id: "1ab8db7f-d972-47da-8037-8eb38227bb05",
name: "Cinnamon Roll"
},
{
id: "9cd838d3-6325-4359-87af-d78403df7cb7",
name: "Peanuts"
},
{
id: "75d20fd2-6b87-4ab0-b80f-3a4e9f196ae3",
name: "Broccoli"
},
{
id: "2d6520d4-5f39-4a7e-b930-24bf99f97623",
name: "Shrimp"
},
{
id: "54e3588a-b962-424d-af7b-982e4829da81",
name: "Popcorn"
},
{
id: "1ae1c137-d299-4257-89c6-8221eca5549f",
name: "Spaghetti"
},
{
id: "ebf42e9d-c33c-4bef-a7a5-07aaac1bc059",
name: "Hash Brown"
}
]

puts "toppings array"
puts "#{toppings_array}"

# ==============================================================================
# ==============================================================================
# Pizzas    http://localhost:8080/pizza

pizza_array = [
{
id: "935655fc-463e-4719-8566-52a0cbcb1335",
name: "Survivors, Kill",
price: 0.44944286,
toppings: [
{
id: "a45a47b7-592c-45c0-92e8-80b250595c8e",
name: "Sour patch kids"
},
{
id: "bb3f80d3-0382-4ba3-b636-a2b7b05d4de1",
name: "Cauliflower"
}
]
},
{
id: "ca36db3b-a0a3-404a-b855-1707cb666830",
name: "Creek Mirror",
price: 9.323681,
toppings: [
{
id: "9a18b62b-5403-4eff-a4d7-21025888c4eb",
name: "Oysters"
},
{
id: "8772b01a-357c-46af-b142-135db1c0694d",
name: "Quesadilla"
}
]
},
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
},
{
id: "bc673528-f088-4779-b2ff-577afd573989",
name: "Cotswold Changes Ghoul",
price: 6.8950396,
toppings: [
{
id: "54e3588a-b962-424d-af7b-982e4829da81",
name: "Popcorn"
},
{
id: "b5eacd25-8fda-43d3-91e5-0c3fcf56c5d8",
name: "Mike and Ikes"
},
{
id: "51486dab-5d9b-445d-8c1e-2655b0c28332",
name: "Jelly Beans"
},
{
id: "5ed983aa-343d-4058-8e4d-c49caaa41f71",
name: "Cotton Candy"
}
]
},
{
id: "da143006-308d-4bde-bfe9-ff50a702d504",
name: "Doctor Jeckyll in Dead-Alive Dog",
price: 0.1492703,
toppings: [
{
id: "292efdae-1683-4822-bb87-1dab2ea67884",
name: "Crab"
},
{
id: "b0e32bcb-0dc6-4134-a4ac-9ba2a4cae231",
name: "Sweet and Sour Chicken"
}
]
},
{
id: "049ac0cc-d6f2-4e82-b024-d5625cd467b4",
name: "Bloodstained Childhood After Gothic Health",
price: 7.877248,
toppings: [
{
id: "6546dd98-3243-4265-a76b-d25b42c75c15",
name: "Fish sticks/patties"
},
{
id: "3c6eb5f1-1678-4a2e-9844-819cc036926f",
name: "Tuna"
},
{
id: "b0e32bcb-0dc6-4134-a4ac-9ba2a4cae231",
name: "Sweet and Sour Chicken"
}
]
},
{
id: "6f348ab5-9e54-47f5-b1c1-00c23225f319",
name: "Green Angel of Ring",
price: 9.043197,
toppings: [
{
id: "5ed80a6f-6ed4-4742-ac00-a3fe0b44bf01",
name: "Ribs"
},
{
id: "923b4edf-b37c-4062-983b-788118757a83",
name: "Chocolate cake"
}
]
},
{
id: "d87405e5-812e-4823-82ac-a29a15aea225",
name: "Tree, Dream",
price: 2.5175543,
toppings: [
{
id: "b5f5eacd-3c35-4ad3-b030-2adecf044073",
name: "Fried clams"
},
{
id: "aa1421fc-bcb1-4580-8e8c-58f85e02365e",
name: "BBQ"
},
{
id: "9cd838d3-6325-4359-87af-d78403df7cb7",
name: "Peanuts"
},
{
id: "b1bf1e86-1db9-4aed-b6b2-56a84c4b593f",
name: "Snickerdoodles"
}
]
},
{
id: "586ac327-6d7d-42c6-acd9-e200cefd1c50",
name: "The Mesa of Shattered Tiger",
price: 7.0517473,
toppings: [
{
id: "53d9422b-7b06-46b6-8d87-16d884b3246d",
name: "Cheetoes"
},
{
id: "b5eacd25-8fda-43d3-91e5-0c3fcf56c5d8",
name: "Mike and Ikes"
},
{
id: "d23da3e3-84ad-44cd-abf8-68f9a12b7f02",
name: "Pizza"
},
{
id: "292efdae-1683-4822-bb87-1dab2ea67884",
name: "Crab"
}
]
},
{
id: "12ca17c8-5c9f-4311-bc3b-f4ba909498ef",
name: "The Evil and the Fear",
price: 0.12806594,
toppings: [
{
id: "d23da3e3-84ad-44cd-abf8-68f9a12b7f02",
name: "Pizza"
},
{
id: "fee41b03-00aa-4a7a-bb6a-48c78aa8a79f",
name: "Rice"
},
{
id: "923b4edf-b37c-4062-983b-788118757a83",
name: "Chocolate cake"
}
]
},
{
id: "aa16f1dc-a88a-438c-be4d-a8cd193b4dda",
name: "Glory of Mata Hari",
price: 3.0905056,
toppings: [
{
id: "292efdae-1683-4822-bb87-1dab2ea67884",
name: "Crab"
},
{
id: "1ae1c137-d299-4257-89c6-8221eca5549f",
name: "Spaghetti"
}
]
},
{
id: "f5f669f3-72d9-44c2-8517-124aaa7d98fa",
name: "Under the Brain",
price: 5.6294966,
toppings: [
{
id: "5ed983aa-343d-4058-8e4d-c49caaa41f71",
name: "Cotton Candy"
},
{
id: "1ab8db7f-d972-47da-8037-8eb38227bb05",
name: "Cinnamon Roll"
}
]
},
{
id: "def0687b-5eff-4a83-a746-97150c6dcaf8",
name: "Hanging the River",
price: 6.882345,
toppings: [
{
id: "53d9422b-7b06-46b6-8d87-16d884b3246d",
name: "Cheetoes"
}
]
},
{
id: "496b0ab4-e87f-4467-884a-643ca3fb9ec3",
name: "The Glass In the Rabbit",
price: 9.828195,
toppings: [
{
id: "5ed80a6f-6ed4-4742-ac00-a3fe0b44bf01",
name: "Ribs"
},
{
id: "292efdae-1683-4822-bb87-1dab2ea67884",
name: "Crab"
},
{
id: "923b4edf-b37c-4062-983b-788118757a83",
name: "Chocolate cake"
},
{
id: "5ed983aa-343d-4058-8e4d-c49caaa41f71",
name: "Cotton Candy"
}
]
},
{
id: "2b08575d-eff9-4c2c-8567-97cdb2dfeee4",
name: "Kill Toad",
price: 0.08617282,
toppings: [
{
id: "1ae1c137-d299-4257-89c6-8221eca5549f",
name: "Spaghetti"
},
{
id: "3c6eb5f1-1678-4a2e-9844-819cc036926f",
name: "Tuna"
}
]
},
{
id: "4e1634b8-4278-400c-bae8-c0f990e679f8",
name: "Beyond the Room of the Aztec Suicide",
price: 6.1850777,
toppings: [
{
id: "53d9422b-7b06-46b6-8d87-16d884b3246d",
name: "Cheetoes"
},
{
id: "22bd31cc-d40d-408c-8925-0bdce068a557",
name: "Pecan Cookies"
},
{
id: "1ab8db7f-d972-47da-8037-8eb38227bb05",
name: "Cinnamon Roll"
}
]
},
{
id: "64f6364e-fa87-4e31-92bd-deaf6abc5d41",
name: "Blonde's Tower",
price: 1.8598962,
toppings: [
{
id: "54e3588a-b962-424d-af7b-982e4829da81",
name: "Popcorn"
},
{
id: "fee41b03-00aa-4a7a-bb6a-48c78aa8a79f",
name: "Rice"
},
{
id: "292efdae-1683-4822-bb87-1dab2ea67884",
name: "Crab"
},
{
id: "c36b6eec-e484-47da-8503-7aea9619ad7e",
name: "Coke"
}
]
},
{
id: "ae75a554-81a0-4874-a7e6-eab8c14f1ddb",
name: "Above the Clutching Bishop",
price: 0.24603963,
toppings: [
{
id: "b5f5eacd-3c35-4ad3-b030-2adecf044073",
name: "Fried clams"
}
]
},
{
id: "41323e93-5075-4f7d-b876-0863baf1e2f3",
name: "Wayward Hands Without Forty Caesar",
price: 7.1291704,
toppings: [
{
id: "8b4fe9a0-de4e-4cf2-b41a-52cc842a1f79",
name: "Lobster"
},
{
id: "9a18b62b-5403-4eff-a4d7-21025888c4eb",
name: "Oysters"
},
{
id: "5ed80a6f-6ed4-4742-ac00-a3fe0b44bf01",
name: "Ribs"
},
{
id: "1ab8db7f-d972-47da-8037-8eb38227bb05",
name: "Cinnamon Roll"
},
{
id: "b0e32bcb-0dc6-4134-a4ac-9ba2a4cae231",
name: "Sweet and Sour Chicken"
}
]
},
{
id: "ccff69fc-a3fc-4763-97d6-51d911614139",
name: "Valley and Rat",
price: 6.7107625,
toppings: [
{
id: "1ae1c137-d299-4257-89c6-8221eca5549f",
name: "Spaghetti"
}
]
}
]



puts "pizza array"
puts "#{pizza_array}"


# ==============================================================================
# ==============================================================================


PizzasTopping.delete_all
Pizza.delete_all
Topping.delete_all

puts "insert toppings in database"
#  iterate thru toppins_array inserting toppings into database
toppings_array.each do | topping |

   Topping.create( name: topping[:name])
end

#  iterate thru pizza_array, creating Pizzas
#  ... for each pizza, iterate thru the toppings, find the toppind id in database

pizza_array.each do | pizza |

   my_pizza = Pizza.create( name: pizza[:name],  price: pizza[:price] * 10)

   my_toppings_array = pizza[:toppings]

   my_toppings_array.each do | topping |

      my_topping = Topping.where( name: topping[:name]).take

      PizzasTopping.create(pizza_id: my_pizza[:id], topping_id: my_topping[:id] )
   end
end
