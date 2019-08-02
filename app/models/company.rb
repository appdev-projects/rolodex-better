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

class Company < ApplicationRecord
  
  def age
    Date.today.year - founded_on.year
  end
  
  def millionare?
    last_year_revenue > 1_000_000
  end
  
  def poor?
    last_year_revenue <= 25_000
  end
    
  def hates_monday?
    self.founded_on.monday?
  end
  
end
