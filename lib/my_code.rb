def map(arr)
  i = 0 
  result = []
  while i < arr.length do
    result[i] = yield(arr[i])
    i += 1
  end
  result
end

def reduce(arr, start = 0)
  result = start
  i=0
  while i < arr.length do
    result = yield(arr[i], result)
    i += 1
  end
  
  ##############
  # This if check may be "cheating" but I cannot figure out how to solve the issue otherwise. If I reverse result and arr[i] in line 15, then the falsey / nil test passes, but the truthy test doesnt because 0 && true = 0
  if(result == nil)
    return false
  end
  result
end