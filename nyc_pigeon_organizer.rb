require 'pry'

def nyc_pigeon_organizer(data)
  #build the first level hash with name extracted
  #leave the origianl symbol and turn second level key into String
  #assign that as value to the key
  final_array = {}
  data.each do |k1,v1|
    v1.each do |k2,v2|
      v2.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
      end
    end
  end
  
  data.each do |k1,v1|
    final_array
  end
end
