require './linked_list.rb'

list = LinkedList.new
puts "Initial head node is #{list.head}"
puts "Initial tail node is #{list.tail}"
puts "Initial size is #{list.size}"
puts "Initial list is #{list.to_s}"

puts "\nTest appending..."
puts "Appending 'blue' #{list.append('blue')} ..."
puts "The size of the list: #{list.size}"
puts "Head node value: #{list.head.value}"
puts "Tail node value: #{list.tail.value}"
puts "Appending 'red' #{list.append('red')} ..."
puts "The size of the list: #{list.size}"
puts "Head node value: #{list.head.value}"
puts "Tail node value: #{list.tail.value}"
puts "The list is #{list}"

puts "\nTest prepending..."
puts "Prepending 'orange' #{list.prepend('orange')} ..."
puts "The size of the list: #{list.size}"
puts "Head node value: #{list.head.value}"
puts "Prepending 'green' #{list.prepend('green')} ..."
puts "The size of the list: #{list.size}"
puts "Head node value: #{list.head.value}"
puts "The list is #{list}"

# puts "Test size: "

# puts "Head node: "

# puts "Tail node: "

puts "\nTest #at(index) "
puts "Head node value: #{list.head.value}"
puts "The value at index 0: #{list.at(0)}"
puts "The value at index 3: #{list.at(3)}"
puts "The value at index 4: #{list.at(4)}"

puts "\nTest #pop "
puts "The list is #{list}"
puts "Tail node value: #{list.tail.value}"
puts "Removing the tail node #{list.pop} ..."
puts "Tail node value: #{list.tail.value}"

puts "\nTest #contains?(value) "
puts "The list is #{list}"
puts "The list contains 'purple'? : #{list.contains?('purple')}"
puts "The list contains 'green'? : #{list.contains?('green')}"
puts "Prepending 'purple' #{list.prepend('purple')} ..."
puts "The list contains 'purple'? : #{list.contains?('purple')}"

puts "\nTest #find(value) "
puts "The list is #{list}"
puts "Find the index of 'orange': #{list.find('orange')}"
puts "Find the index of 'purple': #{list.find('purple')}"

# puts "#to_s "

puts "\nTest #insert_at(value, index) "
puts "The list is #{list}"
puts "Inserting 'yellow' at index '1' #{list.insert_at('yellow', 1)}"
puts "The list is #{list}"
puts "Inserting 'red' at index '3' #{list.insert_at('red', 3)}"
puts "The list is #{list}"

puts "\nTest #remove_at(index) "
puts "The list is #{list}"
puts "The value of the node at index '2': #{list.at(2)}"
puts "Removing the node at index '2' #{list.remove_at(2)}"
puts "The list is #{list}"
