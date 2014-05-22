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

    # Find by attribute name.
    def self.find_by(attribute)
      # Get all objects of class
      objs_arr = self.all
      #puts objs_arr
      found_objs = []
      # We get argument in Hash, So get key and value from that hash which is useful to find data from objevt
      # Because key is a column name of table and value is a value which we have to find from that column 
      attribute_name = attribute.keys
      #puts attribute_name[0]
      attribute_value = attribute.values
      #puts attribute_value[0]

      # find matching value from objects and return that object as output of this method 
      objs_arr.each do |obj|
        if obj.send(attribute_name[0]) == attribute_value[0].to_s
          found_objs.push obj
          #puts find_obj
        end
      end
      #puts found_objs.to_s
      if found_objs.length == 1
        return found_objs[0]
      else
        return found_objs
      end
    end

    # Find using id.
    def self.find(id_no)
      # Get all objects of class
      objs_arr = self.all
      #puts objs_arr

      objs_arr.each do |obj|
        if obj.send(:id) == id_no.to_s
          found_obj = obj
          #puts found_obj
          return found_obj
        end
      end
    end

    # has_many
    def self.has_many(*args)
      #puts "self = #{self}"
      class_name = self
      #puts args.to_s
      if args.length == 1
        associate_class_name = args[0].to_s.singularize.capitalize
        
        method_name = (args[0].to_s).to_sym

        # This line of code calls the send method with the message :define_method passing it method_name as the name of the method.
        send :define_method, method_name do
          #puts self.id
          hash = {}
          hash[(class_name.to_s + "_id").downcase.to_sym] = self.id.to_i
          #puts hash
          # Convert string into class name and call find_by method on that class
          objs = Object.const_get(associate_class_name).find_by hash
          #puts objs.to_s
          return objs
        end
      else
        # Code for :through
        final_objects = []
        through_class_name = args[1].values[0]
        #puts through_class_name
        associate_class_name = args[0].to_s.singularize.capitalize
        
        method_name = (args[0].to_s).to_sym

        # This line of code calls the send method with the message :define_method passing it method_name as the name of the method.
        send :define_method, method_name do
          #puts self.id
          first_hash = {}
          first_hash[(class_name.to_s + "_id").downcase.to_sym] = self.id.to_i
          #puts first_hash
          # Convert string into class name and call find_by method on that class
          through_objs = Object.const_get(through_class_name.capitalize).find_by first_hash
          #puts through_objs.to_s
          # Find object in main associate table
          through_objs.each do |obj|
            #puts obj.id
            second_hash = {}
            second_hash[(through_class_name.to_s + "_id").downcase.to_sym] = obj.id.to_i
            #puts second_hash
            pre_final_objects = Object.const_get(args[0].to_s.singularize.capitalize).find_by second_hash
            pre_final_objects.each do |obj_value|
              final_objects.push obj_value
            end
          end
          #puts final_objects.to_s
          return final_objects
        end
      end
    end
  end

end
