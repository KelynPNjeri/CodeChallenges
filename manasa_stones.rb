require 'set'
def stones(n, a, b)
    # a and b are differences
    # n = number of stones
    # Permutation 1: [0, a, a+b]
    # Permutation 2: 
    # perm = [[a, b], [a, b]]
    perm_set = SortedSet.new([0])
    (n - 1).times do 
        sum_set = SortedSet.new

        perm_set.each do |el| 
            sum_set << el + a
            sum_set << el + b
        end
        perm_set = sum_set  
    end
    perm_set.to_a
end
