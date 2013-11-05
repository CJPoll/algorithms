#!/usr/bin/env ruby

def bubble_sort list
	repeat = true
	while repeat
		index = list.size - 1
		repeat = false
		while index > 0
			if list[index] < list[index - 1]
				swap = list[index]
				list[index] = list[index - 1]
				list[index - 1] = swap
				repeat = true
			end
			index -= 1
		end
	end
end

list = (1..9).to_a.reverse
print list
puts ""

bubble_sort list

print list
puts ""
