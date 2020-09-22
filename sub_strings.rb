def substrings (str, dict)
  str.downcase!
  sub_strings_hash = dict.reduce(Hash.new(0)) do |result, sub_str|
      unless str.scan(sub_str.to_s).empty?
        result[sub_str] += str.scan(sub_str).length
      end
      result
  end

  p sub_strings_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)