def substrings(string, dictionary)
  hash = {}
  dictionary.each{|word| string.downcase.scan(/#{word}/) do |match|
      if hash.has_key?("#{match}")
        hash["#{match}"] = hash["#{match}"] + 1
      else
        hash["#{match}"] = 1
      end
    end
  }
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low", "own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
