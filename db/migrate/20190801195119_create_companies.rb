class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table(:companies) do |t|
      t.string :name
      t.string :industry
      t.string :structure
      t.integer :last_year_revenue
      t.date :founded_on

      t.timestamps
    end
  end
end
