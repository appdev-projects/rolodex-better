# == Schema Information
#
# Table name: contacts
#
#  id            :integer          not null, primary key
#  date_of_birth :date
#  first_name    :string
#  last_name     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  company_id    :integer
#

require "rails_helper"

describe "Contact" do
  it "has a foreign key for Company called company_id", points: 1 do
    new_contact = Contact.new
    expect(new_contact.attributes).to include("company_id")
  end
end

describe "Contact" do
  it "has a foreign key for Company that is type Integer", points: 1 do
    expect(Contact.column_for_attribute("company_id").type).to be(:integer)
  end
end

describe "Contact" do
  it "has an instance method for full_name", points: 1 do
    new_contact = Contact.new
    new_contact.save
    expect(new_contact.methods).to include(:full_name)
  end
end

describe "Contact" do
  it "has an instance method called full_name that returns the combination of first_name and last_name", points: 2 do
    aubrey_plaza = Contact.new
    aubrey_plaza.first_name = "Aubrey"
    aubrey_plaza.last_name = "Plaza"
    aubrey_plaza.save
    expect(aubrey_plaza.full_name).to eql("Aubrey Plaza")
  end
end

describe "Contact" do
  it "has an instance method called age", points: 1 do
    new_contact = Contact.new
    new_contact.save
    expect(new_contact.methods).to include(:age)
  end
end

describe "Contact" do
  it "has an instance method called age that returns the combination of first_name and last_name", points: 1 do
    dwayne_the_rock_johnson = Contact.new
    dwayne_the_rock_johnson.date_of_birth = Date.parse("May 2, 1972")
    dwayne_the_rock_johnson.save
    expect(dwayne_the_rock_johnson.age).to eql(Date.today.year - dwayne_the_rock_johnson.date_of_birth.year)
  end
end

describe "Contact" do
  it "has an instance method called legal_adult?", points: 1 do
    new_contact = Contact.new
    new_contact.save
    expect(new_contact.methods).to include(:legal_adult?)
  end
end


describe "Contact" do
  it "has an instance method called legal_adult? that returns true or false if the Contact is 18 or older", points: 1 do
    skai_jackson = Contact.new
    skai_jackson.date_of_birth = Date.parse("2002-04-08")
    skai_jackson.save
    expect(skai_jackson.legal_adult?).to be(Date.today.year - skai_jackson.date_of_birth.year > 18)
  end
end
