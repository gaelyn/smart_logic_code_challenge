require './lib/file_sorter'

sort_gender = FileSorter.sort_gender
sort_birthdate = FileSorter.sort_birthdate
sort_last_name = FileSorter.sort_last_name

p "Would you like the list sorted by gender, date of birth, or last name?"
prompt = gets.chomp.downcase

if prompt == "gender"
  FileSorter.print_results(sort_gender)
elsif prompt == "date of birth"
  FileSorter.print_results(sort_birthdate)
elsif prompt == "last name"
  FileSorter.print_results(sort_last_name)
else
  p "Not a valid response"
end
