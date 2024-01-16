class InventoryItem
    # Creating attributes and corresponding methods to access/modify them
    attr_accessor :name, :category, :quantity, :price
  
    # Constructor to set initial values
    def initialize(name, category, quantity, price)
      @name = name
      @category = category
      @quantity = quantity
      @price = price
    end
  
    # Method to display item details
    def display_details
      puts "Item: #{@name}, Category: #{@category}, Quantity: #{@quantity}, Price: $#{@price}"
    end
  
    # Method to check if quantity is below 10
    def check_stock
      puts "Low stock, order more." if @quantity < 10
    end
  end
  
  # Creating instances of InventoryItem class
  item1 = InventoryItem.new("apple", "fruit", 15, 1200.0)
  item2 = InventoryItem.new("T-shirt", "clothes", 8, 25.0)
  item3 = InventoryItem.new("Coffee ", "drink", 5, 60.0)
  
  # Adding items to an array
  inventory_array = [item1, item2, item3]
  

  
  # Prompting user for new item details
  puts "\nEnter details for a new item:"
  print "Name: "
  new_name = gets.chomp
  print "Category: "
  new_category = gets.chomp
  print "Quantity: "
  new_quantity = gets.to_i
  print "Price: "
  new_price = gets.to_f
  
  # Creating a new item with user-provided details
  new_item = InventoryItem.new(new_name, new_category, new_quantity, new_price)
  inventory_array << new_item
  
  # Displaying details of the new item
  puts "\nNew Item Details:"
  new_item.display_details
  