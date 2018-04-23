class Table
  attr_accessor :tname, :collect
  def initialize(tname, *collect)
    @tname = tname
    @collect = collect.map(& :to_i)
  end

  def self.create_table
  tables = []
  lines = File.open('casino.txt', 'r').readlines
  lines.each do |line|
    new_line = line.split(', ')
    tables << Table.new(new_line.shift. *new_line)
  end
  tables
  end
end
puts Table.create_table
