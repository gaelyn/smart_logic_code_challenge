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
  end
end
