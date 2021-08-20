require './lib/file_sorter'

sort_gender = FileSorter.sort_gender
sort_birthdate = FileSorter.sort_birthdate
sort_last_name = FileSorter.sort_last_name

puts "Would you like the list sorted by gender, date of birth, or last name?"
puts "You may also type 'all' to see all sorted options."
prompt = gets.chomp.downcase
puts "\n"


if prompt == "gender"
  FileSorter.print_results(sort_gender)
elsif prompt == "date of birth"
  FileSorter.print_results(sort_birthdate)
elsif prompt == "last name"
  FileSorter.print_results(sort_last_name)
elsif prompt == "all"
  FileSorter.print_all_options
else
  p "Not a valid response"
end
