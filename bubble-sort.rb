# procedure bubbleSort(A : list of sortable items)
#     n := length(A)
#     repeat
#         swapped := false
#         for i := 1 to n-1 inclusive do
#             /* if this pair is out of order */
#             if A[i-1] > A[i] then
#                 /* swap them and remember something changed */
#                 swap(A[i-1], A[i])
#                 swapped := true
#             end if
#         end for
#     until not swapped
# end procedure

def bubbleSort(arr)
    len = arr.length
    sorted = true

    while sorted
        i = 0
        sorted = false

        while i < (len-1)
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = true
            end
        i += 1
        end
    end
    return arr
end

puts(bubbleSort([4,3,78,2,0,2]))