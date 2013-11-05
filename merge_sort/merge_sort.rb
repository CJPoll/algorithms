#! /usr/bin/env ruby

def merge_sort list
	return list if list.size == 1
	l, r = split list
	result = merge(merge_sort(l), merge_sort(r))
end

def split list
	pivot = (list.size / 2).floor
	[list.take(pivot), list.drop(pivot)]
end

def merge list1, list2
	listc = []
	listc << list1 << list2
	listc.flatten.compact.sort
end

list = (1..9).to_a.shuffle
print list
puts ""

list = merge_sort list

print list
puts ""
