# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  founded_on        :date
#  industry          :string
#  last_year_revenue :integer
#  name              :string
#  structure         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require "rails_helper"

describe "Company" do
  it "has instance method age", points: 1 do
    netflix = Company.new
    netflix.founded_on = Date.parse("August 29, 1997")
    netflix.save
    expect(netflix.age).to eql(Date.today.year - netflix.founded_on.year)
  end
end

describe "Company" do
  it "has millionare? instance method", points: 1 do
    amd = Company.new
    amd.last_year_revenue = 6_480_000
    amd.save
    expect(amd.millionare?).to be(true)
  end
end  

describe "Company" do
  it "has poor? instance method", points: 1 do
    made_in_my_moms_basement_llc = Company.new
    made_in_my_moms_basement_llc.last_year_revenue = -480
    made_in_my_moms_basement_llc.save
    expect(made_in_my_moms_basement_llc.poor?).to be(true)
  end
end  
  
describe "Company" do
  it "has hates_monday? instance method", points: 1 do
    discord = Company.new
    discord.founded_on = Date.parse("May 13, 2015")
    # It's a Wednesday
    discord.save
    expect(discord.hates_monday?).to be(false)
  end
end 

