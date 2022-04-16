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