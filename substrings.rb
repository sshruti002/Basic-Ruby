#Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second ar#gument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found


def substrings(word,dictionary) #define function with 2 parameters

arr=word.split(" ")  	#split the string in an array, store in arr
result = Hash.new    	#declare Hash
dictionary.each do |i|  #loop for dictionary
result[i] = 0 		#count = 0
arr.each do |j|       	#loop for arr	
if j.include?(i)	#check if the substring is present in the string or not using ?include method
result[i] += 1		#if found, increase count by 1
end
end
if result[i] == 0	#remove elements that have 0 occurences
result.delete(i)	#display the final hash
end		
end

puts result
end #ending def substrings



substrings("Howdy partner, sit down! How's it going?",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]) #calling function


