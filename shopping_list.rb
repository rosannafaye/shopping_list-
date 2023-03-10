def create_list 
    print "What is the list name? "
    name = gets.chomp 
  
    hash = {"name" => name, "items" => Array.new} 
    return hash
  end
  
  
  def print_separator(character = "-") 
    puts character * 80
  end
  
  def print_list(list) 
    puts "List: #{list['name']}"
    
    list["items"].each do |item|
      print_separator()
      puts "\tItem: " + item['name'] + "\t\t\t" +
          "Quantity: " + item['quantity'].to_s 
    end 
    print_separator() 
  end
  
  
  
  def add_list_item 
    print "What is the item called? "
    item_name = gets.chomp 
    
    print "How much? " 
    quantity = gets.chomp
    
    hash = {"name" => item_name, "quantity" => quantity}
    return hash
  end 
  
  list = create_list()
  
  puts "Great! Add some items to your list." 
  
  list['items'].push(add_list_item()) 
  list['items'].push(add_list_item()) 
  list['items'].push(add_list_item()) 
  
  
  print_list(list) 