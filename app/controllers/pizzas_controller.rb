class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
    # @pizzasToppings = PizzasTopping.all
  end

  def show
    @pizza = Pizza.find(params[:id])

    @toppings = []

    @pizzasToppings = PizzasTopping.where(pizza_id: params[:id].to_i).each do | pizzasTopping |
      topping = Topping.find( pizzasTopping.topping_id )
      @toppings.push( topping )
    end
  end

  def new
    @pizza = Pizza.new
  end

  def create
    # due to security issue --  a standard called "strong parameters" for mass assignment
    @pizza = Pizza.new(pizza_params)

    if @pizza.save
      #  pizzas_path is index page, because that route has the Prefix "pizzas" in bin/rake routes  output
      # redirect to prevent user from hitting back on browser and getting message
      redirect_to pizzas_path
    else
      render :new
    end
  end

  def edit

    # setting the @pizza variable to an existing record
    # ... in edit action as opposed to an empty object in new.
    # ... This means the attributes will be preloaded in the form_for in edit.html.erb
    @pizza = Pizza.find(params[:id])

    @toppings = []

    @pizzasToppings = PizzasTopping.where(pizza_id: params[:id].to_i).each do | pizzasTopping |
      topping = Topping.find( pizzasTopping.topping_id )
      @toppings.push( topping )
    end

  end

  def update
    @pizza = Pizza.find(params[:id])

    if @pizza.update_attributes(pizza_params)
      redirect_to pizzas_path
    else
      render :edit
    end
  end

  def destroy
    @pizzasToppings = PizzasTopping.where(pizza_id: params[:id].to_i).each do | pizzasTopping |
      @topping = Topping.find( pizzasTopping.topping_id )
      @topping.destroy
    end

    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    redirect_to pizzas_path
  end

  protected

  def pizza_params
    # :pizza is from @pizza in new.html.erb
    params.require(:pizza).permit(:name, :price)
  end


end
