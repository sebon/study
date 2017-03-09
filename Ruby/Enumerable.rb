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



# Array
puts Array.new(5,1)
array = Array.new(3, 'naive')
array[0].reverse!
puts array

puts Array.new(3) {|index| index.succ }
puts Array('Alice')
puts Array(['Alice'])
puts Array(nil)

array = [4,4,2,3]
puts array.length
puts array.empty?
puts [].empty?

# 다른 두 배열을 연결한 배열
puts [1,2,3] + [4,5]

puts
# 요소를 제외한 배열
puts [4,4,2,3]-[4,3]

puts
# 공통 요소로만 구성된 배열
puts [1,2,3]&[2,3,4]

puts
# n회 반복한 배열
puts [1,2,3]*2

puts
array = [4,4,2,3]
# 첨자 참조
puts array[2]

# 시작 위치와 길이, 또는 첨자 범위를 지정할 수 있다.
puts array[2,2]
puts
puts array[2..4]
puts
puts array.values_at(1)
puts
puts array.values_at(1,3)
puts

# 첫 요소와 첫 요소로부터 n개 요소 취득
puts array.first
puts array.first(2)
puts

# 마지막 요소와 마지막 요소로부터 n개 요소 취득
puts array.last
puts array.last(2)
puts

# 랜덤으로 요소를 취득
puts array.sample
puts array.sample(2)
puts

# 배열에서 특정 키를 가진 요소를 취득
ary = [[:foo, 4], [:bar, 2], [:baz, 3]]
p ary.assoc(:bar)
puts

# 0번째 위치에 대입
array[0] = 5
p array

# 배열의 크기보다 큰 첨자를 지정하면, 해당 첨자 위치 전까지는 nil이 채워진다.
array[10] = 1
p array


array = [4,4,2]
# 요소를 추가한다.
array << 3
p array
array.push 3
p array
# 요소를 추출한다.
p array.pop
p array


array = [4,4,2,3]
# 요소를 추출한다.
array.shift
p array
# 요소를 추가한다.
array.unshift 4
p array

array = [1,2,3,4]
array.select! {|v| v.even?}
p array

array = [1,2,3,4]
array.reject! {|v| v.even?}
p array

array = [1,2,3,4]
# delete_if와 reject! (리시버가 갱신되지 않도록 블록이 false를 반환한다.)
p array.delete_if {|v| false}
p array.reject!  {|v| false} # 리시버 요소가 하나도 선택되지 않은 경우에 nil을 반환한다.
# keep_if와 select! (리시버가 갱신되지 않도록 블록이 true를 반환한다.)
p array.keep_if {|v| true}
p array.select! {|v| 2} # 리시버 요소가 하나도 선택되지 않은 경우에 nil을 반환한다.

array = [4, 4.0, 2, 3]
array.delete 4
p array

array = [4,4,2,3]
array.delete_at 1 # 지정한 인덱스 요소를 삭제한다.
p array


array = [false, nil, 0, '', []]
p array.compact
p array
# 파괴적 compact
p array.compact!
p array

array = [4, 4, 4.0, 2]
p array.uniq
p array
# 파괴적 uniq
p array.uniq!
p array

array = [4,4,2,3]
p array.reverse
p array # 원 객체는 갱신되지 않는다.
# reverse! 는 자신을 갱신(파괴)한다.
p array.reverse!
p array

array = [4, [4,[2,3]]]
p array.flatten # 배열을 일차원으로 변경한다.
p array
p array.flatten!
p array

array = [4,4,2,3]
p array.sort!
p array

array = ["fooo", "fooo", "fo", "f"]
p array.sort_by! {|v| v.length}
p array

people = %w(Alice Bob Charlie)
people.map! {|person| person.upcase}
p people

array = [['a', 'b', 'c'], [1, 2, 3]]

# 행과 열을 바꾼 배열을 취득
p array.transpose

array = [1, 'a']
p array.zip([2,'b'], [3,'c'])

array = [1, 3, 5, 7, 9]
p array.bsearch{|n| n>6}
p array.bsearch{|n| n==8}
p array.bsearch{|n| n>10}

array = [24,1,365]
p array.join
p array.join('-')

array = [1,2]

p array.hash
array.reverse!
p array.hash


hash = {one: 1, two: 2}

# 키와 값을 반복
hash.each do |key, val|
  puts "#{key}: #{val}"
end

# 키만 반복
hash.each_key do |key|
  puts "#{key}"
end

# 값만 반복
hash.each_value do |key|
  puts "#{key}"
end


# 값 변경/추가/삭제
hash = {}
hash[:foo] = 'bar'
hash[:hoge] = 'piyo'
p hash

hash = {foo: 'bar'}
hash.delete(:foo)
p hash

hash = {foo:1, bar:2, baz:3}
# 값이 홀수면 남긴다.
hash.select! {|key, val| val.odd?}
p hash

hash = {foo:1, bar:2, baz:3}
# 값이 짝수면 남긴다.
hash.reject! {|key, val| val.odd?}
p hash

hash = {foo:1, bar:2, baz:3}
# 변경 내용이 없어도 항상 self를 반환
p hash.keep_if {|key, val| true}
p hash.delete_if {|key, val| false}


hash = {foo: 1, bar: 2, baz: 3}
p hash.select {|key, val| val.odd?}
p hash.reject {|key, val| val.odd?}