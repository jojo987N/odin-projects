def cipher(s, n)
    (s.split('').map do |v|
        if !v.match?(/[[:alpha:]]/)
             v
        elsif v === v.upcase
            ((v.ord - 65 + n)%26 + 65).chr
        else
            ((v.ord - 97 + n)%26 +97).chr
        end
    end).join('')
        
end

puts cipher("What a string!", 5)