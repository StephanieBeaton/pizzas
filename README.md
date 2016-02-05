
# ========================================================

This application is written in Ruby on Rails
for Weddingful Coding Challenge
because Charlyne Fothergill of Lighthouse Labs
explained that Weddingful has a Ruby on Rail app.

git clone <repo path>

cd pizzas

bundle install

# to seed the database with Pizzas and Toppings
# ( Pizza and Toppings are manuall copied into seed file from http://localhost:8080)
# .. SQLite database is automatically installed

#  There are 3 tables in the database
#     toppings
#     pizzas
#     pizzas_toppings

#  seed deletes all rows from all 3 tables to start
bin/rails  db:seed


# to start the web server
bin/rails  server

# after the web server has started type   "http://localhost:3000" into the browser
# ... to  display the home page of the website
http://localhost:3000

# to seed the routes
bin/rake   routes

# you can add, delete pizzas

