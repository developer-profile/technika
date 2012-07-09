namespace :db do
  desc "load user data from csv"
  task [:load_csv_data] => [:environment] do
  require 'CSV'
  
  DEFAULT_OPTIONS = { :col_sep => "\t", 
                      :row_sep => :auto, 
                      :quote_char => '"', 
                      :converters => nil, 
                      :unconverted_fields => nil, 
                      :headers => false, 
                      :return_headers => false, 
                      :header_converters => nil, 
                      :skip_blanks => true, 
                      :force_quotes => false }.freeze
 
  CSV.foreach("lib/tasks/blank2011v1csvutf.txt", DEFAULT_OPTIONS) do |row|
  Product.create(:categoryid => row[0], :title => row[1], :description => row[2], :price => row[3])
  end
   
  end
end
