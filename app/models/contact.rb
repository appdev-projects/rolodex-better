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

class Contact < ApplicationRecord
  
  def age
    Date.today.year - self.date_of_birth.year
  end
  
  def full_name
    first_name + " " + last_name
  end
  
  def legal_adult?
    age >= 18
  end
end
