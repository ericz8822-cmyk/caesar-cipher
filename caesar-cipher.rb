def caesar_cipher(str, shift)
  result = str.split('').map do |ch|
    letters = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    if (letters.include?(ch.downcase))
        if (ch.downcase == ch)
            letters[(letters.index(ch) + shift) % 26]
        else
            letters[(letters.index(ch.downcase) + shift) % 26].upcase
        end
    else
        ch
    end
  end.join()
end
