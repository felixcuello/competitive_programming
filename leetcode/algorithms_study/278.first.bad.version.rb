def first_bad_version(n)
  min = 1
  max = n
  candidate = 1

  while min <= max
    guess = (min + max) / 2

    if is_bad_version(guess)
      candidate = guess
      max = guess - 1
    else
      min = guess + 1
    end
  end

  candidate
end
