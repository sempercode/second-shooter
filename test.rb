puts "Enter any number and I'll tell whether it's even or odd."
STDOUT.flush
x = gets.chomp
	if x.to_i.even?
		puts "The number " + x + " is a even."
	else
		puts "The number " + x + " is odd."
end