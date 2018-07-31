require 'pry'
require 'csv'



CSV.read("db/concerns/WordsByCharacter.csv").each do |csv_row|
  binding.pry
end
