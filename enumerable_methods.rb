def add_array(array)
  p 'add_array_with_each ' + add_array_with_each(array).to_s
  p 'add_array_with_map_reduce ' + add_array_with_map_reduce(array).to_s
  p 'add_array_with_reduce ' + add_array_with_reduce(array).to_s
end

def add_array_with_each(array)
  sum = 0
  array.each do |item|
    sum += item
  end
  return sum
end

def add_array_with_map_reduce(array)
  array.map{|item| item }.reduce(:+)
end

def add_array_with_reduce(array)
  array.reduce(0) {|sum,item| sum += item }
end

def add_hash(hash)
  p 'add_hash_with_each ' + add_hash_with_each(hash).to_s
  p 'add_hash_with_map_reduce ' + add_hash_with_map_reduce(hash).to_s
  p 'add_hash_with_reduce ' + add_hash_with_reduce(hash).to_s
end

def add_hash_with_each(hash)
  sum = 0
  hash.each { |key,value| sum += value }
  hash.values
  hash.keys
  sum
end

def add_hash_with_map_reduce(hash)
  hash.map{ |key,value| value }.reduce(:+)
end

def add_hash_with_reduce(hash)
  hash.reduce(0) { |sum,item|
    sum += item.last
  }
end

def sort_array(array)
  array.sort_by { |a| a }
end

def odd_numbers(array)
  # new_array = []
  # array.each do |num|
  #   new_array << num if num.odd?
  # end
  # new_array
  array.select{|num| num.odd? }.sort{|a,b| a <=> b }.select{|num| num < 25 }
end
