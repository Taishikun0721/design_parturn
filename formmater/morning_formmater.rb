require_relative '../module/formmatable'
module Formmater
	class MorningFormmater
		def initialize(menus)
			@menus = menus
		end

		def open
			puts 'おはようございます。本日はお越しいただいてありがとうございます。'
			puts 'こちらドリンクメニューになります'
			@menus.each do |category, menu_hash|
				puts category
				menu_hash.each do |menu, price|
					puts "商品名: #{menu}, ¥#{price}"
				end
			end
		end
	end
end