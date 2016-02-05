class Pizza < ActiveRecord::Base
    has_many :pizzas_toppings

    # validates :name,  presence: true
    # validates :name,  length: {  minimum: 2 }

end
