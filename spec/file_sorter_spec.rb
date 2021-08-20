require 'rspec'
require './lib/file_sorter'

describe FileSorter do
  describe 'load files' do
    it 'can load text file where values are separated by commas' do
      expect(FileSorter.load_comma).to be_an(Array)
      expect(FileSorter.load_comma.count).to eq(3)
      expect(FileSorter.load_comma.first).to be_a(Person)
    end

    it 'can load text file where values are separated by pipes' do
      expect(FileSorter.load_pipe).to be_an(Array)
      expect(FileSorter.load_pipe.first).to be_a(Person)
      expect(FileSorter.load_pipe.count).to eq(3)
    end

    it 'can load text file where values are separated by spaces' do
      expect(FileSorter.load_space).to be_an(Array)
      expect(FileSorter.load_space.first).to be_a(Person)
      expect(FileSorter.load_space.count).to eq(3)
    end
  end

  describe 'all files' do
    it 'can combine all loaded files into one array' do
      expect(FileSorter.all_files).to be_an(Array)
      expect(FileSorter.all_files.first).to be_a(Person)
      expect(FileSorter.all_files.count).to eq(9)
    end
  end

  describe 'sort files' do
    before :each do
      @sort_gender = FileSorter.sort_gender
      @sort_birthdate = FileSorter.sort_birthdate
      @sort_last_name = FileSorter.sort_last_name
    end

    it 'can sort by gender and then last name' do
      expect(@sort_gender).to be_an(Array)
      expect(@sort_gender.first.gender).to eq("Female")
      expect(@sort_gender.first.last_name).to eq("Hingis")
      expect(@sort_gender.last.gender).to eq("Male")
      expect(@sort_gender.last.last_name).to eq("Smith")
    end

    it 'can sort by birthdate and then last name' do
      expect(@sort_birthdate).to be_an(Array)
      expect(@sort_birthdate.first.dob).to eq("2/13/1943")
      expect(@sort_birthdate.first.last_name).to eq("Abercrombie")
      expect(@sort_birthdate.last.dob).to eq("3/3/1985")
      expect(@sort_birthdate.last.last_name).to eq("Smith")
    end

    it 'can sort by last name descending' do
      expect(@sort_last_name).to be_an(Array)
      expect(@sort_last_name.first.last_name).to eq("Smith")
      expect(@sort_last_name.last.last_name).to eq("Abercrombie")
    end
  end

  describe 'output results to terminal' do
    before :each do
      @sort_gender = FileSorter.sort_gender
      @sort_birthdate = FileSorter.sort_birthdate
      @sort_last_name = FileSorter.sort_last_name
      # @option1 = FileSorter.print_results(@sort_gender)
      # @option2 = FileSorter.print_results(@sort_birthdate)
      # @option3 = FileSorter.print_results(@sort_last_name)
    end

    it 'can show files sorted by gender' do
      msg = <<~SORTED
      Hingis Martina Female 4/2/1979 Green
      Kelly Sue Female 7/12/1959 Pink
      Kournikova Anna Female 6/3/1975 Red
      Seles Monica Female 12/2/1973 Black
      Abercrombie Neil Male 2/13/1943 Tan
      Bishop Timothy Male 4/23/1967 Yellow
      Bonk Radek Male 6/3/1975 Green
      Bouillon Francis Male 6/3/1975 Blue
      Smith Steve Male 3/3/1985 Red
      SORTED

      expect { FileSorter.print_results(@sort_gender) }.to output(msg).to_stdout
    end
  end
end
