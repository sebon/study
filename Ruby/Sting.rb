# 빈 문자인가?
puts 'foobar'.empty?
puts ''.empty?

puts 'foobar'.length
puts '가나다라'.length
puts '가나다라'.bytesize

# 인수에 지정한 문자열을 포함하고 있는가?
puts 'Alice Bob Charlie'.include?('Bob')

# 인수에 지정한 문자열로 시작하는가?
puts 'Highlight'.start_with?('High')

# 문자열 결합
puts 'Pine'+'apple'

# 문자열을 n회 반복
puts "Hello" *3

#형식을 맞춘 문자열
puts 'Result: %04d' %42

str = 'The Answer to life, the universe, and everything: 42'
puts str.slice(4)
puts str.slice(4,6)
puts str.slice(4..9)
puts str.slice(/[0-9]+/)
puts str.slice(-2,2)


puts str[4]
puts str[4,6]
puts str[4..9]
puts str[/[0-9]+/]

puts str.slice!(-2,2)
puts str

str = " hi    \n"

puts str.strip
puts str.rstrip
puts str.lstrip

puts "hi  \n\n".chomp
puts 'Users'.chop

puts 'woooooooooooooo'.squeeze
puts 'aabbcccdd'.squeeze('abc')
puts 'aabbccdd'.squeeze('a-c')

puts 'ABC'.downcase
puts 'abc'.upcase
puts 'Abc'.swapcase
puts 'tiTle'.capitalize

puts '24-1-365'.sub(/[0-9]+/, 'x') # 특정 패턴에 일치한 첫 문자열을 변환
puts '24-1-365'.gsub(/[0-9]+/, 'x') # 특정 패턴에 일치한 모든 문자열을 변환

puts '24-1-365'.gsub(/[0-9]+/) {|str| str.to_i.succ}
puts '24-1-365'.gsub(/([0-9]+)/) { $1.to_i.succ }
puts '123'.to_i.succ


str = ' hi '
puts str.strip
puts str.strip!
puts str

puts 'dam'.reverse
puts '가나'.reverse

str = 'dam'
str.reverse!
puts str

str = 'Alice, Bob, Charlie'

# 문자열이 정규 표현으로 분할된다.
puts str.split(', ')
puts str.split(/,\s+/)

# 요소가 두 개 이상의 배열이 되면 더 이상 분할하지 않는다.
puts puts str.split(/,\s+/, 2)

puts 'Alice'.split(//)
puts 'Alice'.each_char.to_a


# 반복 처리
# 문자 단위 반복
'부우후'.each_char {|c| print "#{c}-"}
puts ''

# 바이트 단위 반복
'루'.each_byte do |byte|
  puts byte
end

# 행 단위 반복
"Alice\nBob\nCharlie".each_line do |line|
  puts line
end


puts '가나다라'.encoding
str = '안녕하세요'
new_str = str.encode(Encoding::EUC_KR)
puts new_str
puts new_str.encoding

puts str
str.encode!(Encoding::EUC_KR)
puts str
puts str.encoding

utf8 = '안녕하세요'.encode('UTF-8')
euckr = '안녕하세요'.encode('EUC-KR')

# 비교
puts utf8 == euckr
puts utf8.eql?(euckr)

# 연결
# puts utf8+euckr

euckr = 'Hello'.encode('EUC-KR') # ASCII 호환
utf8 = 'Hello'.encode('UTF-8')# ASCII 호환
utf16 = 'Hello'.encode('UTF-16') # ASCII 호환 없음
ascii = 'Hello'.encode('ASCII-8BIT')

# 비교
puts utf8 == euckr
puts utf8 == ascii
puts utf8 == utf16

# 결합
puts utf8 + euckr
puts utf8 + ascii
#puts utf8 + utf16
