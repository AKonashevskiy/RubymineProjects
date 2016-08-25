a = 3
b = 2
c = 10
d = " "
arr = [2, 3, 3, 5, 11, 34, 56]
str = "i know you"

puts c.nil?
puts d.empty?
puts a + b
puts c.to_s + d
puts "с var is now #{c.to_s} and d is #{d.empty?}"

=begin
# - это диез
? - проверяет значение
! - устанавливает что-либо
.to_i
.to_f
.to_s
arr - массив array - последовательность
=end

k = "test me please"
r = k.gsub("e","")
g = k.gsub!("e","")

# в чем их разница, так и не понял!

puts r
puts g

puts arr[0]
# количество элементов в массиве
puts str[0]
puts str.size
# любая строка - это массив символов
# puts arr.count
puts str.count "kw"

=begin
ДЗ. Оответ на 1е задание:
puts str.count - в чистом виде без аргумента выдавало
ошибку потому что мы не указывали что именно
в этой строке надо посчитать, т.е. мы данному методу
не передали аргумент
"str.count won't work as String does not include Enumerable"
=end

