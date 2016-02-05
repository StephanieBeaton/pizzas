class Topping < ActiveRecord::Base
#class Topping < ActiveResource::Base
    #self.site = "http://localhost:8080"

    validates :name,  presence: true
    validates :name,  length: {  minimum: 2 }
    # validates :price, numericality: true

end
