# 반복처리

# 반복과 함께 값이 증가
%w(Alice Bob Charlie).each_with_index do |name, index|
  puts "#{index}: #{name}"
end

%w(Alice Bob Charlie).each do |name|
  puts "name: #{name}"
end

# 뒤에서부터 역순으로 반복
(1..3).reverse_each do |val|
  puts val
end

# 요소를 n회씩 나누어 반복
(1..5).each_slice 2 do |a, b|
  p [a, b]
end

# n개로 연결된 요소를 하나씩 물려서 반복
(1..4).each_cons 3 do |a, b, c|
  p [a, b, c]
end

puts ['ruby', 'rails'].map {|str| str.upcase} #=>

# 모든 요소가 true이면 true  반환
puts [true, true, true].all?
puts [false, true, true].all?


# 모든 요소가 false이면 true 반환
puts [false, false, false].none?

# 하나라도 true가 있으면 true 반환
puts [true, true, false].any?
puts [false, false, false].any?

# 하나면 ture이면 true 반환
puts [true, false, false].one?

# 요소가 모두 정수이면 true 반환
puts [4,4,2,3].all? {|v| v.is_a?(Integer)}
puts [4,4,'two'].all? {|v| v.is_a?(Integer)}

# 부분 요소 가져오기
puts %w(Alice Bob Charlie).grep(/a/i)
puts ['a', 'b', 3, 4].grep(String) # 문자열인 요소

object = Object.new
puts object.methods.grep(/\?/)


array = [4,4,2,3,5]
puts array.detect {|v| v.even? } # even에 해당하는 첫번째 숫자
puts array.select {|v| v.even? } # even에 해당하는 모든 숫자
puts array.reject {|v| v.even? } # even에 해당하지 않은 모든 숫자
puts
array = [1,2,3,4,5]
puts array.take(3) # 앞에서부터 지정한 수만큼의 요소를 배열로 반환한다.
puts array.drop(3) # 앞에서부터 지벙한 수 만큼 요소를 제외하고 나머지 요소를 배열로 반환한다.
puts
puts array.take_while {|n| n<3} # 블록이 처음으로 false를 반환할 때 까지
puts array.drop_while {|n| n<3} # 블록이 처음으로 false를 반환한 후

puts [4,4,2,3].inject(0) { |result, num|
result + num
}

puts [4,4,2,3].inject { |result, num|
  result + num
}

puts [4,4,2,3].inject(:+)

puts %w(Alice Bob Charlie).each_with_object({}) { |name, result|
  result[name] = name.length
}


# 요소 그루핑
# 정수와 부동소소점 배열
array = [1, 2.0, 3.0, 4]
# 클래스별로 그루핑
puts array.group_by {|val| val.class}

array = [1,2,3,4,5]
# 짝수와 홀수 배열로 나눈다.
puts array.partition {|n| n.even? }

# 최솟값과 최댓값
range = (1..10)
puts range.max
puts range.min
puts range.minmax

people = %w(Alice Bob Charlie)
puts people.min_by {|s| s.length}
puts people.max_by {|s| s.length}

# 정렬
people = %w(Bob Alice Charlie)
# 요소를 정렬한다.
puts people.sort
# 요소를 길이로 정렬한다. (1)
puts people.sort {|a, b| a.length <=> b.length }
# 요소를 길이로 정렬한다. (2)
puts people.sort_by {|name| name.length}