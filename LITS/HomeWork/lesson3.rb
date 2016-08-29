ten_number = ARGV[0].to_i
two_number = ARGV[1]
arr = []
arr2 = []
arr3 = []
result = 0

if ten_number < 0
    puts "Validation ERR: Данное решение работает только для десятичных натуральных чисел. Остановите пыполнение программы, нажав Ctlr+C. Try Again) "
end
while ten_number != 0 do
    k = ten_number % 2 # вычисление остатка от деления
    arr.push(k) # запись остатка от деления в массив
    ten_number = ten_number / 2
    # puts ten_number
end
=begin
p "============="
puts "Преобразование числа Десятичной Системы Исчисления (10-СИ) в Двоичную (2-СИ) методом половинного деления"
p "============="
=end
arr.reverse! # меняет порядок элементов в arr с последующим сохранением
# Вывод результата:
p "============="
puts "ANSWER: Заданное вами число ' #{ARGV[0]} ' в 2-СИ имеет следующий вид: #{arr.join}" # метод .join преобразовывает arr в str
p "============="
=begin
p "============="
puts "Преобразование числа Двоичной Системы Исчисления (2-СИ) в Десятиричную (10-СИ) методом удвоения"
p "============="
=end
valid = two_number.to_s.count "23456789" # проверяем наше число на содержание чисел отличных от 0 и 1
valid2 = two_number.to_s.count ",." # проверяем наше число на содержание "." и  ","
two_number = ARGV[1].to_i
if valid > 0
    puts "Validation ERR: Вы ввели число ' #{ARGV[1]} ' не принадлежащее 2-СИ. Числа в 2-СИ состоят только из 1 и 0. Try Again)"
    p "============="
elsif valid2 > 0
    two_number = ARGV[1].to_i
    arr2 = two_number.to_s.split('')
    # puts "two_number.to_i"
    puts "Validation NOTICE: Вы ввели число ' #{ARGV[1]} ' с плавающей запятой, что не поддерживается данной версией программы (см. Документацию), по этой причине оно будет приведено к типу integer, а именно #{two_number.abs}"
    p "============="
elsif valid === valid2
    arr2 = two_number.to_s.split('')
end
arr2.each do |item|
    result = result*2 + item.to_i # вычисление и суммирование элементов каждого из состовляющих 10тичного числа
    arr3.push(result)
end
if arr3.any? === true # проверка не пустой ли arr3 и тогда вывод ответ
    # two_number = ARGV[1].to_i
    puts "ANSWER: Заданное вами число: ' #{two_number.abs} ' в 10-СИ имеет следующий вид: #{arr3.last}"
    p "============="
end


=begin
# Альтернативный способ валидации содержимого массива без преобразования в строку
required = ".,"                         # число, которое мы будем искать
answ = arr2.include?(required)          # проверка
puts answ                               # вывод результата false или true
=end
