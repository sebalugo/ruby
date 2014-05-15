require 'spec_helper'

class TriangleError < RuntimeError
end

class Triangle

  attr_reader :a, :b, :c
  def initialize a,b,c
    @a=a
    @b=b
    @c=c
  end

  def kind
    if @a==@b && @b==@c
      kind = "equilateral"
   elsif @a==@b && @b!=@c
      kind = "isosceles"
   elsif @a==@c && @b!=@a
      kind = "isosceles"
   else 
      kind = "scalene"
   end	
  
  end

  private

  def sides
    
  end

  def equilateral?
    
  end

  def isosceles?
  end

  def illegal?
  end

  def violates_inequality?
  end

  def impossible_length_side?
  end
   
end

describe Triangle do
   context "valid triangle" do
 
    context "equilateral" do
      it"verify all sides are equal" do
       tri = Triangle.new 2,2,2
       expect(tri.kind()).to eql("equilateral")
     end
    end
     context "isosceles" do
      it"verify two sides are equal" do
       tri = Triangle.new 3,3,2
       expect(tri.kind()).to eql("isosceles")     
   end
  end
    context "scalene" do
     it"verify no equal sides" do
      tri = Triangle.new 1,4,3
      expect(tri.kind()).to eql("scalene")
    end
  end
end

   context "invalid triangle" do
  
    context "illegal" do
     it "" do
    end
   end

   context "violates_inequality"do
    it "" do
    end
   end
   
   context "impossible_length_side" do
    it "" do
   end
  end   
 end

end
