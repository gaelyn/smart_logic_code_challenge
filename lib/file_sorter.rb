require './lib/person'

class FileSorter
  @comma = './data/comma.txt'
  @pipe = './data/pipe.txt'
  @space = './data/space.txt'

  class << self
    def load_comma
      rows = File.readlines(@comma).map(&:chomp)
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

    def load_pipe
      rows = File.readlines(@pipe).map(&:chomp)
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

    def load_space
      rows = File.readlines(@space).map(&:chomp)
      rows.map do |row|
        row = row.split
        data = {
          last_name: row[0],
          first_name: row[1],
          gender: row[3],
          dob: row[4],
          favorite_color: row[5]
        }
        Person.new(data)
      end
    end

    def all_files
      load_space + load_comma + load_pipe
    end

    def sort_gender
      all_files.sort_by do |person|
        [person.gender, person.last_name]
      end
    end

    def sort_birthdate
      all_files.sort_by do |person|
        dob = person.dob.split("/")
        [dob[2].to_i, dob[0].to_i, dob[1].to_i, person.last_name]
      end
    end

    def sort_last_name
      all_files.sort_by do |person|
        person.last_name
      end.reverse
    end

    def print_results(sorted_list)
      string = ""
      sorted_list.each do |person|
        string << "#{person.last_name} #{person.first_name} #{person.gender} #{person.dob} #{person.favorite_color}\n"
      end
      puts string
    end

    def print_all_options
      puts "Output 1:"
      print_results(sort_gender)
      puts "\nOutput 2:"
      print_results(sort_birthdate)
      puts "\nOutput 3:"
      print_results(sort_last_name)
    end
  end
end
