digits = [*0..9]
permutations = digits.permutation.to_a
puts permutations.fetch(1000000-1)
