#! /usr/bin/env ruby

def insertion_sort list
	return list if list.size <= 1
	index = 1
	while index < list.size
		sub = index - 1
		register = list[index]
		while sub >= 0 and register < list[sub]
			list[sub + 1] = list[sub]
			sub -= 1
		end
		list[sub + 1] = register
		index += 1
	end
end

list = (1..9).to_a.reverse
print list
puts ""

insertion_sort list

print list
puts ""
