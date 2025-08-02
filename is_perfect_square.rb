def is_perfect_square(n)
  return false if n < 0

  left = 0
  right = n

  while left <= right
    mid = (left + right) / 2
    square = mid * mid

    if square == n
      return true
    elsif square < n
      left = mid + 1
    else
      right = mid - 1
    end
  end

  false
end

