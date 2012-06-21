require 'fastercsv'
namespace :import => :environment do
   task :questions do
     FasterCSV.foreach("../../public/blank2011.csv") do |row|
           q = Question.create(:question=>row[0], etc...)
           PossibleAnswer.create(:question=>q, :answer=>row[1], etc....) #providing PossibleAnswer belongs_to Question
      end
   end 
end