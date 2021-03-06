two_number = ARGV[0]
arr2 = []
arr3 = []
result = 0
p "============="
puts "Преобразование числа Двоичной Системы Исчисления (2-СИ) в Десятиричную (10-СИ) методом удвоения"
p "============="
# валидация двоичного числа и "плавающей точки"
valid = two_number.to_s.count "23456789" # проверяем наше число на содержание чисел отличных от 0 и 1
valid2 = two_number.to_s.count ",." # проверяем наше число на содержание "." и  ","
# p "valid2 = #{valid2}" # проверка значения переменной 'valid2'
if valid > 0
    puts "Validation ERR: Вы ввели число не принадлежащее 2-СИ. Числа в 2-СИ состоят только из 1 и 0. Try Again)"
else valid2 > 0
    two_number = ARGV[0].to_i
    arr2 = two_number.to_s.split('')
    puts "Вы ввели число с плавающей запятой, что не поддерживается данной версией программы (см. Документацию), по этой причине оно будет приведено к типу integer, а именно #{arr2.join}"
end
arr2.each do |item|
    result = result*2 + item.to_i # вычисление и суммирование элементов каждого из состовляющих 10ричного числа
    arr3.push(result)

end
if arr3.any? == true  # проверка не пустой ли arr3 и тогда вывод ответ
    puts "Заданное вами десятичное число: ' #{two_number} ' в двоичной системе
исчисления имеет следующий вид: #{arr3.last}"
end


=begin
# Альтернативный способ валидации содержимого массива без преобразования в строку
required = ".,"                     # число, которое мы будем искать
answ = arr2.include?(required)          # проверка
puts answ                               # вывод результата false или true
=end
