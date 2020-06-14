def can_partition(array):
  array_sum = sum(array)

  # if 's' is a an odd number, we can't have two subsets with same total
  if array_sum % 2 != 0:
    return False

  # we are trying to find a subset of given numbers that has a total sum of 's/2'.
  subset_sum = int(array_sum / 2)

  length = len(array)
  results = [[False for x in range(subset_sum+1)] for y in range(length)]

  # populate the sum=0 column, as we can always have '0' sum without including
  # any element
  for i in range(0, length):
    results[i][0] = True

  # with only one number, we can form a subset only when the required sum is
  # equal to its value
  for j in range(1, subset_sum+1):
    results[0][j] = array[0] == j

  # process all subsets for all sums
  for i in range(1, length):
    for j in range(1, subset_sum+1):
      # if we can get the sum 'j' without the number at index 'i'
      if results[i - 1][j]:
        results[i][j] = results[i - 1][j]
      elif j >= array[i]:  # else if we can find a subset to get the remaining sum
        results[i][j] = results[i - 1][j - array[i]]

  # the bottom-right corner will have our answer.
  return results[length - 1][subset_sum]


def main():
  print("Can partition: " + str(can_partition([1, 2, 3, 4])))
  print("Can partition: " + str(can_partition([1, 1, 3, 4, 7])))
  print("Can partition: " + str(can_partition([2, 3, 4, 6])))


main()