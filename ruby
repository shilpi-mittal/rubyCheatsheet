String str = "hello e\n"
p str[-1]
p str.chomp
p str.chomp!
p str.chop!
p str.chop

str.each_char do |i|
p i
end

String s = ':yu'
p s
p ':yu'

p [5,6,7,5,4].uniq
p [5,6,7,5,4].count
p [5,6,7,5,4].count(5)
p [5,6,7,5,4].count{|x| x.even? == true}
[5,6,7,5,4].cycle(2){|x| p x}

a=%w[ad cd]
p a

a,b = ['sd','gh']

Hash h = {"ab"=>"z","bc"=>"y"}
p h.fetch('ab')
p h['ab']

h.each do |i|
  p i
end

p (1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }
p (1..100).find_all    { |i| i % 5 == 0 and i % 7 == 0 }
p (1..100).detect    { |i| i % 5 == 0 and i % 7 == 0 }



abc=7

p (x=1 if abc==0)
p (x=1 if abc=0)
p (x=1 if abc==0)

p %w[ant bear cat].all? { |word| word.length >= 3 }

p %w[ant bear cat].any? { |word| word.length >= 4 }

[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].chunk { |n|
  n.even?
}.each { |even, ary|
  p [even, ary]
}


p (1..4).map { |i| i*i } 
p (1..4).collect {"cat"}

p (5..10).reduce(:+)
p (5..10).inject { |sum, n| sum + n }
p [5,6,7,5,4].max(2)
p [5,6,7,5,4].include? 5

p %w{ant bear cat}.none? { |word| word.length == 5 }
p %w{ant bear cat}.one? { |word| word.length == 4 }
p (1..6).partition { |v| v.even? }
p (1..10).reject { |i|  i % 3 == 0 }
p (1..3).reverse_each { |v| p v }

p [1,2,4,9,10,11,12,15,16,19,20,21].slice_when {|i, j| i+1 != j }.to_a
p [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].sort
p [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5].take_while { |i| i <= 3 }
p %i[hello world].each_with_index.to_h


a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]

p a.zip(b)
p [1, 2, 3].zip(a, b)
p [1, 2].zip(a, b) 
p a.zip([1, 2], [8])
c = []
p a.zip(b) { |x, y| c << x + y }
p c


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