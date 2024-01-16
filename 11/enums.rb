class MyCollection
    include Enumerable
  
    def initialize(collection)
      @collection = collection
    end
  
    def each
      @collection.each { |item| yield item }
    end
  end
  
  my_collection = MyCollection.new([1, 2, 3, 4, 5])
  
  puts "Sum of elements: #{my_collection.sum}"
  puts "Product of elements: #{my_collection.inject(:*)}"
  puts "Even numbers: #{my_collection.select { |item| item.even? }}"
  