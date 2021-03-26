String str = "hello e\n"
p str[-1] # => \n
p str.chomp # => "hello e"
p str # => "hello e\n"
p str.chomp! # => "hello e"
p str # => "hello e"
p str.chop! # => "hello "
p str # => "hello "
p str.chop # => "hello"
p str # => "hello "

str.each_char do |i|
p i
end

String s = ':yu'
p s
p ':yu'

p [5,6,7,5,4].uniq # returns uniq elements
p [5,6,7,5,4].count # count all elements
p [5,6,7,5,4].count(5) # count all occurences of 5
p [5,6,7,5,4].count{|x| x.even? == true} # count all even elements
[5,6,7,5,4].cycle(2){|x| p x} # loop throuh the array twice and print all elements

a=%w[ad cd] # shortcut for ["ad", "cd"]
p a

a,b = ['sd','gh']

Hash h = {"ab"=>"z","bc"=>"y"}
p h.fetch('ab') # => "z"
p h['ab'] # => "z"

h.each do |i|
  p i 
end
# => ["ab", "z"]
# => ["bc", "y"]

p (1..100).find    { |i| i % 5 == 0 and i % 7 == 0 } # returns first element divisble by 5 and 7
p (1..100).find_all    { |i| i % 5 == 0 and i % 7 == 0 } # returns all elements divisble by 5 and 7
p (1..100).detect    { |i| i % 5 == 0 and i % 7 == 0 } # returns first element divisble by 5 and 7



abc=7

p (x=1 if abc==0) # => nil (as abc!=0)
p (x=1 if abc=0) # => 1 (sets abc =0)
p (x=1 if abc==0) # => 1

p %w[ant bear cat].all? { |word| word.length >= 3 } # returns true if all elements have length >=3

p %w[ant bear cat].any? { |word| word.length >= 4 } # returns true if any element have length >=4

[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n|
  n.even?
}.each { |even, ary|
  p [even, ary]
}

# => [false, [3, 1]]
# => [true, [4]]
# => [false, [1, 5, 9]]
# => [true, [2, 6]]
# => [false, [5, 3, 5]]


p (1..4).map { |i| i*i } # => [1, 4, 9, 16]
p (1..4).collect {"cat"} # => ["cat", "cat", "cat", "cat"]

p (5..10).reduce(:+) # returns sum of numbers 5 to 10
p (5..10).inject { |sum, n| sum + n } # returns sum of numbers 5 to 10
p [5,6,7,5,4].max(2) # returns largest 2 numbers
p [5,6,7,5,4].include? 5 # returns true as array contains 5

p %w{ant bear cat}.none? { |word| word.length == 5 } # returns true as there is no word of length 5
p %w{ant bear cat}.one? { |word| word.length == 4 } # returns true as there is exactly one word of length 4
p %w{anth bear cat}.one? { |word| word.length == 4 } # returns false as there are 2 words of length 4

p (1..6).partition { |v| v.even? } # => [[2, 4, 6], [1, 3, 5]] (partitions into 2 arrays, one for even and one for odd)
p (1..10).reject { |i|  i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10] (do not return any multiple of 3)
p (1..3).reverse_each { |v| p v }
# => 3
# => 2
# => 1
# => 1..3

p [1,2,4,9,10,11,12,15,16,19,20,21].slice_when {|i, j| i+1 != j }.to_a # => [[1, 2], [4], [9, 10, 11, 12], [15, 16], [19, 20, 21]]
p [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].sort # => [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
p [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].take_while { |i| i <= 3 } # => [3, 1]
p %i[hello world].each_with_index.to_h # => {:hello=>0, :world=>1}


a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

p a.zip(b) # => [[4, 7], [5, 8], [6, 9]]
p [1, 2, 3].zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p [1, 2].zip(a, b) # => [[1, 4, 7], [2, 5, 8]]
p a.zip([1, 2], [8]) # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
c = []
p a.zip(b) { |x, y| c << x + y } # => nil
p c # => [11, 13, 15]


class Fish 
  attr_accessor :name 
  def initialize(name)
    @name = name
  end
end
dory = Fish.new("Dory")
def dory.whale_talk
  "Mmmmoooooowaaaaah..."
end
dory_clone = dory.clone
p dory_clone.whale_talk #=> "Mmmmoooooowaaaaah..."
dory_dup = dory.dup 
# dory_dup.whale_talk #undefined
