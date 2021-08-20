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
end
