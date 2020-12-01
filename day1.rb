file = "input-1"

is = File.read(file).lines.map {|i| Integer(i) }

# is.each {|i| puts i}

is.map do |i|
  is.map do |j|
    [i, j]
  end
end
.flatten(1)
.filter do |i,j|
  i + j == 2020 && i <= j
end
  .map do |i, j|
  i*j
end.map {|p| puts p}
