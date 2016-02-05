class Topping < ActiveRecord::Base
    has_many :pizzas

    validates :name,  presence: true
    validates :name,  length: {  minimum: 2 }
    # validates :price, numericality: true

end
