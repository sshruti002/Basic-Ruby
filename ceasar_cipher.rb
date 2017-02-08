#Implement a caesar cipher that takes in a string and the shift factor and then#outputs the modified string:

puts "Enter a string, you would like to encrypt"
str = gets.chomp

puts "Enter the shift key"
key = gets.chomp.to_i

def ceasar_cipher(str,key)
text = str.split(//)
for i in (1..key)
for j in (0..text.length-1)

if text[j].scan(/\W/).length == 0
if(text[j] == 'z')
text[j]='a'
elsif(text[j] == 'Z')
text[j]='A'
else
text[j] = text[j].next
end
end

end
end
puts text.join
end

ceasar_cipher(str,key)
