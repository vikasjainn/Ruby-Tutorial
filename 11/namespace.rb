# Define a namespace module
module MyNamespace
    class MyClass
      def initialize
        puts "Creating an instance of MyClass in MyNamespace"
      end
  
      def say_hello
        puts "Hello from MyNamespace::MyClass!"
      end
    end
  end
  
  # Create an instance of MyClass within the namespace
  my_instance = MyNamespace::MyClass.new
  
  # Call a method on the instance
  my_instance.say_hello
  