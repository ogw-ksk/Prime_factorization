function main()
    print("Please select degree of difficulty. easy/nomal/hard\n")
    Difficulty = chomp(readline())
    if Difficulty == "easy"
        print("OK, you chose easy.\n")
        x = parse(Int64,join(rand(1:999)))
    elseif Difficulty == "nomal"
        print("OK, you chose nomal.\n")
        x = parse(Int64,join(rand(1000:9999)))
    elseif Difficulty == "hard"
        print("OK, you chose hard.\n")
        x = parse(Int64,join(rand(10000:99999)))
    else
        print("Sorry,my hand slipped.\n")
        x = parse(Int64,join(rand(10000000:99999999)))
    end

    print("Please factor the next natural number.\n")
    print("$x\n")

    while x != 1
        flag = 0
        PrimeNumber = 0
        i = 2
        a = parse(Int,chomp(readline()))
        if a == 1
            print("Please enter a natural number other than 1.\n")
        else
            while flag != 1
                if a % i != 0
                    i += 1
                elseif a % i == 0 && i == a
                    PrimeNumber = 1
                    flag += 1
                elseif a % i == 0 && i != a
                    PrimeNumber = 0
                    flag += 1
                end
            end
            if x % a == 0 && PrimeNumber == 1
                x = x / a
            else
                print("That's wrong.\n")
            end
        end
    end
    print("Perfect!\n")
end

main()
