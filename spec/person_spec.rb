
require 'rspec'
require './lib/person'

describe Person do
  describe 'initialize' do
    it 'is an instance of person' do
      data = {
        last_name: "Kelly",
        first_name: "Sue",
        gender: "Female",
        favortie_color: "Pink",
        dob: "7/12/1959"
      }
      person = Person.new(data)
      expect(person).to be_a(Person)
    end
  end
end
