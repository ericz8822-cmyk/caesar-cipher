def caesar_cipher(str, shift)
  result = str.split('').map do |ch|
    letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    letters[(letters.index(ch) + shift) % 26]
  end.join()
end

puts caesar_cipher("xyzab",4)