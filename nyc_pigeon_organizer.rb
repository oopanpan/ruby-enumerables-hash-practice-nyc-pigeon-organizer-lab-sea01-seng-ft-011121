require 'pry'

def nyc_pigeon_organizer(data)
  #build the first level hash with name extracted
  #leave the origianl symbol and turn second level key into String
  #assign that as value to the key
  final_array = {}
  data.each do |input_key, input_value|
    input_value.each do |inner_key, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
          binding.pry
        end
      end
    end
  end
  
  data.each do |k1,v1|
    final_array
  end
end
