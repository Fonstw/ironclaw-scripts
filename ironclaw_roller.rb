# We require the dice string.
if ARGV[0] == nil
	puts "Please provide your dice."
	puts "46802 for d4's, d6's, d8's, d10's and d12's respectively."
	exit
end

system_text = " -- rolling "

# Roll dice
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

# Derive target number, take 3 if not given.
target = ARGV[1] ? ARGV[1].to_i : 3

puts system_text[0...-2] + " vs.#{target} -- "
puts

# Highest roll only...
roll = dice.max

# If even the highest roll is a 1, they're all 1's.
if roll == 1
	puts "Player: Aww shucks! I botched!"
	exit
end

puts "Player: I rolled #{roll}"

if roll <= target
	puts "Host: Too bad."
else
	puts "Host: Nice! How many above #{target}?"

	successes = 0
	dice.each do |die|
		if die > target
			successes = successes+1
		end
	end

	puts "Player: Err, #{successes}"
end
