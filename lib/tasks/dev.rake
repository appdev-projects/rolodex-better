namespace :dev do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task :prime => :environment do
    require "faker"
    company_records = [
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
      {:founded_on => Faker::Date.between(from: 2.months.ago, to: Date.today), :industry => Faker::Company.industry, :last_year_revenue => Faker::Number.within(range: -500..10_000_000), :structure => Faker::Company.suffix, :name => Faker::Company.name },
    ]
    
    Company.delete_all
    Company.import(company_records)
    puts "Created #{Company.count} Company records"

    contact_records = [
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
      {:first_name => Faker::Name.first_name , :last_name => Faker::Name.last_name , :date_of_birth => Faker::Date.birthday(min_age: 18, max_age: 65), :company_id => Company.all.sample.id},
  ]
    
    Contact.delete_all
    Contact.import(contact_records)
    puts "Created #{Contact.count} Contact records"
  end
end
