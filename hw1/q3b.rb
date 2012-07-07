#!/usr/local/bin/ruby

class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name
  attr_accessor :calories

  def healthy? ; self.calories < 200 ; end

  def delicious? ; true ; end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end

  attr_accessor :flavor

  def delicious?
    return true unless self.flavor.downcase == "black licorice"
    false
  end
end

x = Dessert.new("cake", 250)
puts x.name
puts x.calories
puts x.healthy?
x.name="bar"
puts x.name
y = JellyBean.new("foo", 190, "black licorice")
puts y.name
puts y.calories
puts y.flavor
puts y.delicious?
puts y.healthy?
