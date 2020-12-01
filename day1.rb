file = "input-1"

is = File.read(file).lines.map {|i| Integer(i) }

# is.each {|i| puts i}

is.map do |i|
  is.map do |j|
    next if i+j >= 2020
    is.map do |k|
      [i, j, k]
    end
  end
end
.flatten(2)
.filter do |i,j,k|
  !(i.nil? || j.nil? || k.nil?) && i + j + k == 2020 && i <= j && j <= k
end
  .map do |i, j, k|
  i*j*k
end.map {|p| puts p}
