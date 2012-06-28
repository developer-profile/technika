namespace :db do
  desc "load user data from csv"
  task [:load_csv_data] => [:environment] do
  require 'CSV'
  
  DEFAULT_OPTIONS = { :col_sep => ";", 
                      :row_sep => :auto, 
                      :quote_char => "'", 
                      :converters => nil, 
                      :unconverted_fields => nil, 
                      :headers => false, 
                      :return_headers => false, 
                      :header_converters => nil, 
                      :skip_blanks => false, 
                      :force_quotes => false }.freeze
 
  CSV.foreach("lib/tasks/blank2011nlist.csv", DEFAULT_OPTIONS) do |row|
  Product.create(:title => row[0], :description => row[1], :price => row[2])
  end
   
  end
end