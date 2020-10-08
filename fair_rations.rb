def fairRations(B)
    # Step 1: Loop through the arr.
    # Step 2: Perform before arithmetic.
    # Step 3: Perform after arithmetic.
    # Step 4: Have a variable that counts the number of moves made to make loaves even.
    arr_len = B.length
    bread_count = 0
    0.upto(arr_len-1) do |idx|
      begin
        if B[idx] % 2 == 1
          bread_count += 2
          B[idx+1] += 1
        end
      rescue
        return 'NO'
      end
    end
    return bread_count
end
