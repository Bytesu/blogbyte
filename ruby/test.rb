#!/usr/bin/ruby -w

puts "Hello, Ruby!";
print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF
print <<"foo", <<"bar"        # 您可以把它们进行堆叠
    I said foo.
foo
    I said bar.
bar
BEGIN {
    puts "Initializing Ruby Program"
 }
 END {
    puts "Terminating Ruby Program"
 }


ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }

colors.each do |key, value|
    print key, " is ", value, "\n"
 end

 (10..15).each do |n| 
    print n, ' ' 
 end


 class Customer
    @@no_of_customers=0
    def initialize(id, name, addr)
       @cust_id=id
       @cust_name=name
       @cust_addr=addr
    end
    def display_details()
       puts "Customer id #@cust_id"
       puts "Customer name #@cust_name"
       puts "Customer address #@cust_addr"
     end
     def total_no_of_customers()
        @@no_of_customers += 1
        puts "Total number of customers: #@@no_of_customers"
     end
 end


 class Sample
    def hello
       puts "Hello Ruby!"
    end
 end
object = Sample. new
object.hello()

cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust1.display_details()
puts @FILE