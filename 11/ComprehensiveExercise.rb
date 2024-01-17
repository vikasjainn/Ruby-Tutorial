class InventoryItem
    attr_accessor :name, :category, :quantity, :price
  
    def initialize(name, category, quantity, price)
      @name = name
      @category = category
      @quantity = quantity
      @price = price
    end
  
    def display_details
      puts "Name: #{@name}, Category: #{@category}, Quantity: #{@quantity}, Price: #{@price}"
    end
  
    def to_hash
      { name: @name, category: @category, quantity: @quantity, price: @price }
    end
  
    def check_stock
      puts "Low stock, order more." if @quantity < 10
    end
  end
  
  # Initialize instances
  item1 = InventoryItem.new("Item1", "Electronics", 15, 499.99)
  item2 = InventoryItem.new("Item2", "Clothing", 5, 29.99)
  item3 = InventoryItem.new("Item3", "Books", 8, 12.99)
  
  # Array and Iteration
  inventory = [item1, item2, item3]
  
  puts "Details of each item:"
  inventory.each { |item| item.display_details }
  
  # Hash and Method
  def print_details_using_hash(item)
    item_hash = item.to_hash
    puts "Details using hash: #{item_hash}"
  end
  
  # Control Flow
  def check_stock_and_order(item)
    item.check_stock
  end
  
  # User Interaction
  puts "Enter details for a new item:"
  print "Name: "
  new_name = gets.chomp
  print "Category: "
  new_category = gets.chomp
  print "Quantity: "
  new_quantity = gets.to_i
  print "Price: "
  new_price = gets.to_f
  
  new_item = InventoryItem.new(new_name, new_category, new_quantity, new_price)
  inventory << new_item
  
  # Class Inheritance
  class DiscountedItem < InventoryItem
    attr_accessor :discount_percentage
  
    def initialize(name, category, quantity, price, discount_percentage)
      super(name, category, quantity, price)
      @discount_percentage = discount_percentage
    end
  
    def display_details
      discounted_price = @price - (@price * @discount_percentage / 100)
      puts "Name: #{@name}, Category: #{@category}, Quantity: #{@quantity}, Price: #{discounted_price} (Discounted)"
    end
  end
  
  # Calculate total value
  def calculate_total_value(inventory)
    total_value = inventory.sum { |item| item.quantity * item.price }
    puts "Total value of inventory: $#{total_value}"
  end
  
  # Example of using DiscountedItem
  discounted_item = DiscountedItem.new("DiscountedItem", "Electronics", 10, 99.99, 20)
  discounted_item.display_details
  
  # Calculate total value of the inventory
  calculate_total_value(inventory)
  