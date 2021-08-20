require 'rspec'
require './lib/file_sorter'

describe FileSorter do
  describe 'load files' do
    it 'can load text file where values are separated by commas' do
      expect(FileSorter.load_comma).to be_an(Array)
      expect(FileSorter.load_comma.count).to eq(3)
    end
  end
end
