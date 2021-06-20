require 'byebug'

require_relative './menu/soft_drink_menu'
require_relative './menu/alcohol_menu'
require_relative './formmater/morning_formmater'

class User
	def initialize(name, age, menu = {})
		@name = name
		@age = age
		@menus = select_menu(menu)
	end

	def select_menu(menu)
		menu[:menu1].call
	end

	def show_menu
		Formmater::MorningFormmater.new(@menus).open
	end
end

minor = User.new('mike', 18, menu1: Menu::SoftDrinkMenu.new)
adult = User.new('john', 30, menu1: Menu::AlcoholMenu.new)


minor.show_menu
adult.show_menu

