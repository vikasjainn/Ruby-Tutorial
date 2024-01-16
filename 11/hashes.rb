H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"

Hash[[key =>|, value]* ] or

Hash.new [or] Hash.new(obj) [or]
Hash.new { |hash, key| block }



$, = ", "
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}

keys = months.keys
puts "#{keys}"


# Using try_convert method
p Hash.try_convert({3=>8})
p Hash.try_convert("3=>8")
