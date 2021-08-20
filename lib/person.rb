class Person
  attr_reader :last_name, :first_name, :gender, :dob, :favorite_color
  def initialize(data)
    @last_name = data[:last_name]
    @first_name = data[:first_name]
    @gender = data[:gender]
    @dob = data[:dob]
    @favorite_color = data[:favorite_color]
  end
end
