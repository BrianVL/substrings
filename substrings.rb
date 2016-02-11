def substrings(string, dictionary)
  hash = {}
  dictionary.each{|word| string.scan(/#{word}/){|match| hash[:"#{match}"] = 1}}
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
