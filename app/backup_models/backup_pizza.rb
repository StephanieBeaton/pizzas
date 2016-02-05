class Pizza < ActiveRecord::Base
#class Pizza < ActiveResource::Base
    # self.site = "http://localhost:8080/pizzas"

    has_many :toppings

    # validates :name,  presence: true
    # validates :name,  length: {  minimum: 2 }

end
