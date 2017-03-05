require_relative 'controllers/menu_controller'

menu = MenuController.new

system "clear"
puts "Welcome to AdressBloc!"
menu.main_menu
