class PasswordValidator
  def initialize(row)
    rule, @input = row.split(': ')

    range, letter = rule.split(' ')
    range = range.split('-').map(&:to_i)
    @rule = { range: range[0]..range[1], letter: letter }
  end

  def valid?
    @input.count(@rule[:letter]) === @rule[:range]
  end
end