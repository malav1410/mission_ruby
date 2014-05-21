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
            # use send method to call dynamic method on an Object
            obj.send(attributes[num].to_s + "=", row[num].strip)
          end
          arr.push obj
        end
        i += 1
      end
      #puts arr.to_s
      return arr
    end

    def self.find_by(attribute)
      # Get all objects of class
      objs_arr = self.all
      puts objs_arr

      # We get argument in Hash, So get key and value from that hash which is useful to find data from objevt
      # Because key is a column name of table and value is a value which we have to find from that column 
      attribute_name = attribute.keys
      puts attribute_name[0]
      attribute_value = attribute.values
      puts attribute_value[0]

      # find matching value from objects and return that object as output of this method 
      objs_arr.each do |obj|
        if obj.send(attribute_name[0]) == attribute_value[0].to_s
          find_obj = obj
          puts find_obj
          return find_obj
        end
      end
    end
  end

end
