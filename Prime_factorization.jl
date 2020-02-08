function main()
    print("Please enter a natural number other than 1.\n")
    x = parse(Int64,chomp(readline()))
    i = 2

    if x == 1
        print("Read the instructions properly.")
    else
        while x != 1
            if x % i != 0
                i += 1
            elseif x % i == 0 && i != x
                print("$i,")
                x = x / i
                i = 2
            elseif x % i == 0 && i == x
                print("$i\n")
                x = x / i
                i = 2
            end
        end
    end
end

main()
