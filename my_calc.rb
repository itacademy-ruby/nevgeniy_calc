# encoding: utf-8
#My Calc - nu ppc teper :) 

calc = true

while (calc == true)
  puts 'Введите первое значение'
    f_value = gets.chomp
  
  puts 'Введите операнд'
    operand = gets.chomp
  
  puts 'Введите второе значение'
    l_value = gets.chomp

  result = case operand
    when '+'
      result = f_value.to_f + l_value.to_f
    when '-'
      result = f_value.to_f - l_value.to_f
    when '*'
      result = f_value.to_f * l_value.to_f
    when '/'
    result = f_value.to_f / l_value.to_f

    else 
    puts 'Ну, что-то Вы не то ввели'
    end

  puts 'Результат ' +  result.to_s

    puts 'Еще будем считать?'
    reload = gets.chomp
  case reload
    when /^[дДyY]/
      calc = true
    when /^[НнNn]/
      calc = false
  end
end