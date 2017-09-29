def add_array(array)
  # p 'add_array_with_each ' + add_array_with_each(array).to_s
  # p 'add_array_with_map_reduce ' + add_array_with_map_reduce(array).to_s
  p 'add_array_with_reduce ' + add_array_with_reduce(array).to_s
end

def add_array_with_each(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end

def add_array_with_map_reduce(array)
  reduced_nums = array.map do |num|
    num
  end
  reduced_nums.reduce(0) do |sum, num|
    sum + num
  end
end

def add_array_with_reduce(array)
  array.reduce(:+)
end

def add_hash(hash)
  # p 'add_hash_with_each ' + add_hash_with_each(hash).to_s
  # p 'add_hash_with_map_reduce ' + add_hash_with_map_reduce(hash).to_s
   p 'add_hash_with_reduce ' + add_hash_with_reduce(hash).to_s
end

def add_hash_with_each(hash)
  sum = 0
  hash.each do |word, num|
    sum += num
  end
  sum
end

def add_hash_with_map_reduce(hash)
  hash.map do |key, value|
    value
  end.reduce(:+)
# array = hash.values.map
# array.reduce(:+)
end

def add_hash_with_reduce(hash)

hash.reduce(0) do |sum, num|
  p num
  sum += num[1]
end

end

def sort_array(array)
  array.sort
end

def odd_numbers(array)
  # odd_numbers_with_each(array)
  # odd_numbers_with_select(array)
  odd_numbers_with_reject(array)
end

def odd_numbers_with_each(array)
  new_array = []
  array.each do |num|
    if num.odd?
      new_array << num
    end
  end
  new_array
end

def odd_numbers_with_select(array)
  array.select{|num| num.odd? }
end

def odd_numbers_with_reject(array)
  array.reject{|num| num.even? } #=> Array; or empty array
end

def find_first_odd_number(array)
  array.find{|num| num.odd? } #=> Single Object; or nil
end

def teachers_with_over_one_year_experience(teachers)
  teachers.select { |teacher| teacher.years_experience > 1 }
end

def teacher_names_with_over_one_year_experience(teachers)
  teachers_with_over_one_year_experience(teachers).map { |teacher| teacher.first_name}
end


def all_teachers_who_dont_hate_cats(teachers)
  teachers.reject { |teacher| teacher.kitten_love == :hatred}
end

def all_teacher_names_who_dont_hate_cats(teachers)
  all_teachers_who_dont_hate_cats(teachers).map { |teacher| teacher.first_name }
end


def teachers_ordered_by_ukulele_skill(teachers)
  teachers.sort_by{|teacher| Teacher::UKULELE_SKILL_LEVELS.index(teacher.ukulele_skill)}
end

def teachers_names_ordered_by_ukulele_skill(teachers)
  teachers_ordered_by_ukulele_skill(teachers).map{|teacher| teacher.first_name}
end


# def teachers_ordered_by_ukulele_skill(teachers)
#     teachers.sort{|a,b| Teacher::UKULELE_SKILL_LEVELS.index(a.ukulele_skill) <=> Teacher::UKULELE_SKILL_LEVELS.index(b.ukulele_skill) }
# end
# def teachers_names_ordered_by_ukulele_skill(teachers)
# end


def teachers_from_san_diego(teachers)
  teachers.select { |teacher| teacher.location == "San Diego" }
end

def teachers_names_from_san_diego(teachers)
  teachers_from_san_diego(teachers).map do |teacher|
    teacher.first_name
  end
end


def teachers_from_san_diego_ordered_by_last_name(teachers)
  teachers_from_san_diego(teachers).sort_by { |teacher| teacher.last_name }
end

def teachers_names_from_san_diego_ordered_by_last_name(teachers)
  teachers_from_san_diego_ordered_by_last_name(teachers).map { |teacher| teacher.first_name }
end


def teachers_ordered_by_nunchuck_skills_then_ukulele_skills(teachers)
  teachers.sort_by do |teacher|
    nunchuck_index = Teacher::NUNCHUCK_SKILL_LEVELS.index(teacher.nunchuck_skill)
    ukulele_index = Teacher::UKULELE_SKILL_LEVELS.index(teacher.ukulele_skill)
    [nunchuck_index, ukulele_index]
  end

  teachers.sort do |a,b|
    a_nunchuck_index = Teacher::NUNCHUCK_SKILL_LEVELS.index(a.nunchuck_skill)
    a_ukulele_index = Teacher::UKULELE_SKILL_LEVELS.index(a.ukulele_skill)
    b_nunchuck_index = Teacher::NUNCHUCK_SKILL_LEVELS.index(b.nunchuck_skill)
    b_ukulele_index = Teacher::UKULELE_SKILL_LEVELS.index(b.ukulele_skill)

    [a_nunchuck_index, a_ukulele_index] <=> [b_nunchuck_index, b_ukulele_index]
  end
end

def teachers_names_ordered_by_nunchuck_skills_then_ukulele_skills(teachers)
end
