require_relative 'enumerable_methods'
require_relative 'teacher'

one_to_ten_array = [1,2,3,4,5,6,7,8,9,10]
one_to_ten_hash = {
  one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9, ten: 10
}

array_to_be_sorted = [9, 23, 17, 44, 4, 41, 60, 28, 79, 34]

add_array(one_to_ten_array) # => 55

# What enumerable method(s) can you use?
add_hash(one_to_ten_hash) # => 55

# What enumerable method(s) can you use?
puts sort_array(array_to_be_sorted).to_s

# What enumerable method(s) can you use?
puts "Odd numbers:"
puts odd_numbers(one_to_ten_array).to_s
puts odd_numbers(array_to_be_sorted).to_s
puts '-' * 30
if false
puts odd_numbers(one_to_ten_hash).to_s

# Use a different enumerable method from `odd_numbers`, which one?
puts even_numbers(one_to_ten_array)
puts even_numbers(array_to_be_sorted)
puts even_numbers(one_to_ten_hash)

# What enumerable method(s) can you use?
puts numbers_less_than_ten(array_to_be_sorted)
puts numbers_less_than_ten(one_to_ten_hash)
end
# Working with objects and enumerable methods

kevin = Teacher.new(
  first_name: 'Kevin', last_name: 'Solorio', years_experience: 4,
  ukulele_skill: :novice, nunchuck_skill: :newb, kitty_love: :loves_cats
)
mark = Teacher.new(
  first_name: 'Mark', last_name: 'Siemers', years_experience: 0,
  ukulele_skill: :beginner, nunchuck_skill: :napolean_dynamite, kitty_love: :tolerance
)
mike = Teacher.new(
  first_name: 'Mike', last_name: 'Busch', years_experience: 3,
  ukulele_skill: :hawaiian_shred_master, nunchuck_skill: :novice, kitty_love: :tolerance
)
matt = Teacher.new(
  first_name: 'Matt', last_name: 'Baker', years_experience: 2,
  ukulele_skill: :intermediate, nunchuck_skill: :michelangelo, kitty_love: :hatred
)
jen = Teacher.new(
  first_name: 'Jen', last_name: 'Gilbert', years_experience: 1,
  ukulele_skill: :advanced, nunchuck_skill: :novice, kitty_love: :cat_lady
)
teachers = [kevin, mark, mike, matt, jen]
if false
puts '-' * 30
puts "teachers_with_over_one_year_experience"
puts teachers_with_over_one_year_experience(teachers)

puts 'teacher_names_with_over_one_year_experience'
puts teacher_names_with_over_one_year_experience(teachers)

puts '-' * 30
puts 'all_teachers_who_dont_hate_cats'
puts all_teachers_who_dont_hate_cats(teachers)

puts 'all_teacher_names_who_dont_hate_cats'
puts all_teacher_names_who_dont_hate_cats(teachers)

puts '-' * 30
puts 'teachers_ordered_by_ukulele_skill'
puts teachers_ordered_by_ukulele_skill(teachers)

puts 'teachers_names_ordered_by_ukulele_skill'
puts teachers_names_ordered_by_ukulele_skill(teachers)

puts '-' * 30
puts 'teachers_ordered_by_ukulele_skill'
puts teachers_ordered_by_ukulele_skill(teachers)
puts 'teachers_names_ordered_by_ukulele_skill'
puts teachers_names_ordered_by_ukulele_skill(teachers)
end
