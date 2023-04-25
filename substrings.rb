def substrings(string, dictionary)
result_hash = {}
dictionary.each do |word|
    result_hash[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
end


return result_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
