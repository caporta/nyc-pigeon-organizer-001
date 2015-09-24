require 'pry'

def nyc_pigeon_organizer(data)
  sorted_hash = {}
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        if !sorted_hash.keys.include?(name)
          sorted_hash[name] = {}
        end
        sorted_hash[name][key] = []
      end
    end
  end
  sorted_hash.each do |key, value|
    data.each do |k, v|
      v.each do |kk, vv|
        if vv.include?(key)
          sorted_hash[key][k] << kk.to_s
        end
      end
    end
  end
  sorted_hash
end