require_relative 'password_validator'

input = File.readlines('day2.txt', chomp: true)

result_one = input.map do |row|
  PasswordValidator.new(row).valid_for_sled?
end

result_two = input.map do |row|
  PasswordValidator.new(row).valid_for_toboggan?
end

pp "Part One: #{result_one.count { |v| v == true }}"
pp "Part Two: #{result_two.count { |v| v == true }}"