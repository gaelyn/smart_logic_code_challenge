
require 'rspec'
require './lib/person'

describe Person do
  describe 'initialize' do
    before :each do
      data = {
        last_name: "Kelly",
        first_name: "Sue",
        gender: "Female",
        favorite_color: "Pink",
        dob: "7/12/1959"
      }
      @person = Person.new(data)
    end

    it 'is an instance of person' do
      expect(@person).to be_a(Person)
    end

    it 'has attributes' do
      expect(@person.last_name).to eq("Kelly")
      expect(@person.first_name).to eq("Sue")
      expect(@person.gender).to eq("Female")
      expect(@person.favorite_color).to eq("Pink")
      expect(@person.dob).to eq("7/12/1959")
    end
  end

  describe 'gender' do
    it 'can format Female gender' do
      data = {
        last_name: "Kelly",
        first_name: "Sue",
        gender: "F",
        favorite_color: "Pink",
        dob: "7/12/1959"
      }
      @person = Person.new(data)

      expect(@person.gender).to eq("Female")
    end

    it 'can format Male gender' do
      data = {
        last_name: "Kelly",
        first_name: "Sue",
        gender: "M",
        favorite_color: "Pink",
        dob: "7/12/1959"
      }
      @person = Person.new(data)

      expect(@person.gender).to eq("Male")
    end
  end

  describe 'dob' do
    it 'can format date of birth' do
      data = {
        last_name: "Kelly",
        first_name: "Sue",
        gender: "M",
        favorite_color: "Pink",
        dob: "7-12-1959"
      }
      @person = Person.new(data)

      expect(@person.dob).to eq("7/12/1959")

    end
  end
end
