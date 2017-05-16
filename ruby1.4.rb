#Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если
#oни есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
#  Если D > 0, то выводим дискриминант и 2 корня
#  Если D = 0, то выводим дискриминант и 1 корень (т.к. они в этом случае равны)
#  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
#Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать  
#Math.sqrt
# Например,  
#Math.sqrt(16)
#  вернет 4, т.е. квадратный корень из 16.

puts "Enter a b c (with delimiter ','):"
sides = gets.chomp.split(',').map {|i| Float(i) }
a = sides[0]
b = sides[1]
c = sides[2]
if (d=b**2-4*a*c) == 0
	puts "x = #{(-b)/2*a}"
elsif d<0
	puts "no roots of equation"
elsif d>0
	puts "x1 = #{(-b+Math.sqrt(d))/2*a}\nx2 = #{(-b-Math.sqrt(d))/2*a}"
end