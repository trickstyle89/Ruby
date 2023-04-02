the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for number in the_count
  puts "This is count #{number}"
end


fruits.each do |fruit|
  puts "A fruit of type : #{fruit}"
end


change.each do |coin|
  puts "coins: #{coin}"
end
