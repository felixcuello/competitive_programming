def count_primes(n)
    criba = Array.new(n, 1)
    criba[0] = 0
    criba[1] = 0
    i = 1
    while i*i <= n
        i += 1
        next if criba[i] == 0

        j = i*i
        while j <= n
            criba[j] = 0
            j += i
        end
    end

    criba.sum
end

puts count_primes(5_000_000)
