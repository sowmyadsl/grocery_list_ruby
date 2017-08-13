#Create a list asking the user to enter the name of the list?
def create_list
  print "What is the list name? "
  name = gets.chomp

  hash = { "name" => name, "items" => Array.new }
  return hash
end

#Create an add list item method to take the name of item and quantity and add a hash
def add_list_item
  print "What is the item called? "
  item_name = gets.chomp

  print "How much? "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end

#method that prints "-" separator
def print_separator(character="-")
  puts character * 80
end

#prints the final grocery list
def print_list(list)
  puts "List: #{list['name']}"
  print_separator()

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
         "Quantity: " + item['quantity'].to_s
  end

  print_separator()
end


#call create_list method
list = create_list()


# print a message
puts "Great! Add some items to your list."

# lists items to push to add to the hash
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

# prints the list 
puts "Here's your list:\n"
print_list(list)
