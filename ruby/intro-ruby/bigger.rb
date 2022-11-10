def bigger (a,b)
    if a > b
        a
    else
        b
    end
end

def biggest(a, b, c)

    bigger_one = bigger(a,b)
    if bigger_one == a
        biggest = bigger(a,c)

    else bigger_one == b
        biggest = bigger(b,c)
    end
    biggest
end

def mediam(a, b, c)
    biggest_number = biggest(a,b,c)

    if biggest_number == a
        mediam_number = bigger(b,c)
    
    elsif biggest_number == b
        mediam_number = bigger(a,c)
    
    elsif biggest_number == c
        mediam_number = bigger(a,b)

    end

    mediam_number
end

puts mediam(5,7,2)
puts mediam(7,3,2)
puts mediam(1,4,2)
