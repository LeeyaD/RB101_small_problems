odd_numbers = [1..99].map(&:to_a).flatten.select {|n| n.odd?}

puts odd_numbers

1.upto(99) {|i| puts i if i.odd? }