require './lib/person'

class FileSorter
  @@comma = './data/comma.txt'
  @@pipe = './data/pipe.txt'
  @@space = './data/space.txt'

  def self.load_comma
    rows = File.readlines(@@comma).map(&:chomp)
    rows.map do |row|
      row = row.split(", ")
      data = {
        last_name: row[0],
        first_name: row[1],
        gender: row[2],
        dob: row[4],
        favorite_color: row[3]
      }
      Person.new(data)
    end
  end

  def self.load_pipe
    rows = File.readlines(@@pipe).map(&:chomp)
    rows.map do |row|
      row = row.split(" | ")
      data = {
        last_name: row[0],
        first_name: row[1],
        gender: row[3],
        dob: row[5],
        favorite_color: row[4]
      }
      Person.new(data)
    end
  end

  def self.load_space
    rows = File.readlines(@@space).map(&:chomp)
    rows.map do |row|
      data = {
        last_name: row.split[0],
        first_name: row.split[1],
        gender: row.split[3],
        dob: row.split[4],
        favorite_color: row.split[5]
      }
      Person.new(data)
    end
  end
end
