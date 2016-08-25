ten_number = ARGV[0].to_i
two_number = ARGV[1].to_i

arr  = []
arr2 = []
arr3 = []

if ten_number < 0
    puts "Validation ERR: Данное решение работает только для десятичных натуральных чисел. Остановите пыполнение программы, нажав Ctlr+C. Try Again) "
end
while ten_number != 0 do
    k = ten_number % 2  # вычисление остатка от деления
    arr.push(k)         # запись остатка от деления в массив
    ten_number = ten_number / 2
    # puts ten_number
end
p "============="
puts "Преобразование числа Десятичной Системы Исчисления (10-СИ) в Двоичную (2-СИ) методом половинного деления"
p "============="
arr.reverse! # меняет порядок элементов в arr с последующим сохранением
# Вывод результата:

puts  "Заданное вами десятичное число ' #{ARGV[0].to_i} ' в двоичной системе
исчисления имеет следующий вид: #{arr.join}" # метод .join преобразовывает arr в str
