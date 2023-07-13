puts "Linear Search"
puts "-------------"

def search(array, number)
  array.each_with_index do |element, index|
    if element == number then
      puts "Search sucessful"
      puts "Element #{element} in position #{index} of array"
    end
end

array = [10,50,30,70,80,60,20,90,40]

key = 90

array.each_with_index do |element, index|
  if element == key then
    puts "Search successful"
    puts "Element #{element} in position #{index}"
    break
end
