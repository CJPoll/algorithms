#! /usr/bin/env ruby

def quick_sort list
	return list if list.size <= 1
	pivot = list.pop

	greater = []
	lesser = []

	list.each do | element |

		if element > pivot
			greater << element
		else
			lesser << element
		end
	end

	(quick_sort(lesser) << pivot).concat(quick_sort(greater))
end

list = (1..9).to_a.shuffle

puts "List: #{list}"

list = quick_sort list

puts "List: #{list}"
