class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  # def create

  #   # :post is from @post in new.html.erb
  #   @post = Post.new(
  #     title:  params[:post][:title],
  #     author: params[:post][:author],
  #     text:   params[:post][:text]
  #   )

  #   if @post.save

  #     #  posts_path is index page
  #     redirect_to posts_path
  #   else
  #     render :new
  #   end
  # end

  def create
    # due to security issue --  a standard called "strong parameters" for mass assignment
    @pizza = Pizza.new(pizza_params)

    if @pizza.save
      #  posts_path is index page, because that route has the Prefix "posts" in bin/rake routes  output
      # redirect to prevent user from hitting back on browser and getting message
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit

    # setting the @pizza variable to an existing record
    # ... in edit action as opposed to an empty object in new.
    # ... This means the attributes will be preloaded in the form_for in edit.html.erb
    @pizza = Pizza.find(params[:id])
  end

  def update
    @pizza = Pizza.find(params[:id])

    if @pizza.update_attributes(pizza_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    redirect_to posts_path
  end

  protected

  def pizza_params
    # :pizza is from @pizza in new.html.erb
    params.require(:pizza).permit(:title, :author, :text)
  end


  # (The odd <<-eos.gsub(/\s+/, " ").strip syntax is just to allow for multiline strings.)

  # def index
  #   @posts = [
  #     {
  #       title: "Superstar",
  #       author: "Carly Rae Jepson",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         Khurram Virani has been my music idol since I started writing
  #         songs back when I was 4. His voice is a revelation. His stage presence
  #         is unparalleled. And those costumes! He remains an inspiration to this
  #         day.
  #       eos
  #     },
  #     {
  #       title: "Basketball Idol",
  #       author: "Steve Nash",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         I remember watching Khurram Virani (#14) play back when he just playing
  #         pickup games on the street. Dude had moves nobody had ever seen. Breaking
  #         ankles. Poppin' threes. Great all-around game.
  #       eos
  #     },
  #     {
  #       title: "Acting Legend",
  #       author: "Michael J. Fox",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         Back when I was in university, Khurram Virani was my acting coach. He
  #         studied with the best and it shows. His acting chops were already legendary
  #         before his teaching career began. But it seems he's actually improved!
  #       eos
  #     },
  #     {
  #       title: "Who?",
  #       author: "Vurram Khirani",
  #       text: "Never heard of this guy Khurram Virani, but he sounds great."
  #     }
  #   ]
  # end

  # def show
  #   posts = [
  #     {
  #       title: "Superstar",
  #       author: "Carly Rae Jepson",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         Khurram Virani has been my music idol since I started writing
  #         songs back when I was 4. His voice is a revelation. His stage presence
  #         is unparalleled. And those costumes! He remains an inspiration to this
  #         day.
  #       eos
  #     },
  #     {
  #       title: "Basketball Idol",
  #       author: "Steve Nash",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         I remember watching Khurram Virani (#14) play back when he just playing
  #         pickup games on the street. Dude had moves nobody had ever seen. Breaking
  #         ankles. Poppin' threes. Great all-around game.
  #       eos
  #     },
  #     {
  #       title: "Acting Legend",
  #       author: "Michael J. Fox",
  #       text: <<-eos.gsub(/\s+/, " ").strip
  #         Back when I was in university, Khurram Virani was my acting coach. He
  #         studied with the best and it shows. His acting chops were already legendary
  #         before his teaching career began. But it seems he's actually improved!
  #       eos
  #     },
  #     {
  #       title: "Who?",
  #       author: "Vurram Khirani",
  #       text: "Never heard of this guy Khurram Virani, but he sounds great."
  #     }
  #   ]

  #   #  params[:id] was populated in config/routes.rb
  #   #  if  http://localhost:3000/posts/99  then 99 gets stored in params[:id] by config/routes.rb

  #   @post = posts[params[:id].to_i]
  # end


  # def post1
  #   @post = {
  #     title: "Basketball Idol",
  #     author: "Steve Nash",
  #     text: <<-eos.gsub(/\s+/, " ").strip
  #       I remember watching Khurram Virani (#14) play back when he just playing
  #       pickup games on the street. Dude had moves nobody had ever seen. Breaking
  #       ankles. Poppin' threes. Great all-around game.
  #     eos
  #   }
  # end

  # def post2
  #   @post = {
  #     title: "Acting Legend",
  #     author: "Michael J. Fox",
  #     text: <<-eos.gsub(/\s+/, " ").strip
  #       Back when I was in university, Khurram Virani was my acting coach. He
  #       studied with the best and it shows. His acting chops were already legendary
  #       before his teaching career began. But it seems he's actually improved!
  #     eos
  #   }
  # end

  # def post3
  #   @post = {
  #     title: "Who?",
  #     author: "Vurram Khirani",
  #     text: "Never heard of this guy Khurram Virani, but he sounds great."
  #   }
  # end


end
