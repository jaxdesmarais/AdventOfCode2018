#part 1
input = File.open("./dayOne.txt").read

sum = 0

input.each_line do |line|
  sum += line.to_i
end

puts sum

# part 2
data = File.read("./dayOne.txt").chomp.split("\n")

found = nil
list = [0]
number = 0

until found
  data.each do |num|
    number += num.to_i
    found = number if list.include? number
    break if found

    list << number
  end
end

puts found
