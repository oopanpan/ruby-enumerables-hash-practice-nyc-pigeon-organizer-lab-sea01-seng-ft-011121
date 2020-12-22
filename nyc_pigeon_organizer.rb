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
        end
      end
    end
  end
  
  final_array.each do |name, detail|
    data.each do |input_key, input_value|
      if !detail[input_key]
        detail[input_key] = []
        #binding.pry
      end
    end
  end
  
  final_array.each do |name, detail|
    detail.each do |final_traits, final_detail|
      data.each do |input_key, input_value|
        input_value.each do |traits, person|
          if input_key == final_traits && person.include?(name)
            final_detail << traits.to_s
            #binding.pry
          end
        end
      end
    end
  end
  final_array
end
