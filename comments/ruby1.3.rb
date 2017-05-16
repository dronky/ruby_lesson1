# Прямоугольный треугольник. 
# Программа запрашивает у пользователя 3 стороны треугольника
# и определяет, является ли треугольник прямоугольным,
# используя теорему Пифагора (www-formula.ru) и выводит результат на экран.
# Также, если треугольник является при этом равнобедренным 
# (т.е. у него равны любые 2 стороны), то дополнительно выводится информация о том,
# что треугольник еще и равнобедренный. 
# Подсказка: чтобы воспользоваться теоремой Пифагора, 
# нужно сначала найти самую длинную сторону (гипотенуза)
# и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон.
# Если все 3 стороны равны, то треугольник равнобедренный и равносторонний,
# но не прямоугольный.
puts "Enter a b c of triangle (with delimiter ','):"
sides = gets.chomp.split(',').map {|i| Float(i) }
a = sides[0]
b = sides[1]
c = sides[2]
case sides.max
when a
  if (c**2 + b**2) == a**2
	puts 'triangle is rectangular'
  end
when b
  if (a**2 + c**2) == b**2
  	puts 'triangle is rectangular'
  end
when c
  if (a**2 + b**2) == c**2
	puts 'triangle is rectangular'
  end
else
  puts "something went wrong"
end
if [a, c].include? b
	puts 'triangle is equilateral and isosceles'		
elsif a == b || a == c || b == c
		puts 'triangle is isosceles'	
end