require_relative 'product'
require_relative 'book'
require_relative 'film'

leon = Film.new('290','3')
puts "Фильм Леон стоит #{leon.price} рублей"
