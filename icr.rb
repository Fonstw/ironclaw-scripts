if ARGV[0] == nil
	puts "Please provide your dice."
	puts "46802 for d4's, d6's, d8's, d10's and d12's respectively."
	exit
end

system_text = " -- rolling "

dice = Array.new
ARGV[0].chars.each do |die|
	case die.to_i
	when 4, 6, 8
		system_text = system_text + "d#{die}, "
		dice.push(1+rand(die.to_i))
	when 0, 2
		system_text = system_text + "d1#{die}, "
		dice.push(1+rand(10+die.to_i))
	else
		puts "Please only provide 4, 6, 8, 0 and/or 2 for your dice, no spaces."
		puts "For example: 68 for \"d6, d8\"."
		exit
	end
end

puts system_text[0...-2] + " -- "
puts

p dice.sort.reverse

if dice.max == 1
	puts "BOTCH!"
end
