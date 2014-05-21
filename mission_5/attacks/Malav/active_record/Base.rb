require 'active_support/inflector'
module ActiveRecord
  
  class Base
    
    def self.all
      # Get class name on which all class_method calls
      class_name = self.ancestors[0].to_s
      # fetch data from database which is csv file
      obj_arr = fetch_data_from_csv(class_name)
      # return array of all objects
      return obj_arr
    end

    def self.fetch_data_from_csv(class_name)
      arr = []
      attributes = []
      i = 0
      CSV.foreach("database/#{class_name.pluralize.downcase}.csv") do |row|
        no_of_colms = row.length
        if i == 0
          # Get column name from csv file
          (0..no_of_colms-1).each do |num|
            attributes.push row[num].strip.downcase
          end
        else
          obj = self.new
          (0..no_of_colms-1).each do |num|
            obj.send(attributes[num].to_s + "=", row[num].strip)
          end
          arr.push obj
        end
        #puts attributes
        i += 1
      end
      puts arr.to_s
      return arr
    end
  end

end
