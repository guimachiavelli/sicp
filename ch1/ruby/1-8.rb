#!/usr/bin/env ruby

def cubic_root(x)
    cubic_root_iter(1.0, x, 0)
end

def cubic_root_iter(guess, x, old_guess)
    if good_enough? guess, old_guess then return guess end

    cubic_root_iter(improve(guess,x), x, guess)
end

def good_enough?(guess, old_guess)
    return (guess - old_guess).abs < 0.0001
end

def improve(guess, x)
    return ((x / guess ** 2) + (guess * 2)) / 3
end

result = cubic_root(ARGV[0].to_f)

puts result
