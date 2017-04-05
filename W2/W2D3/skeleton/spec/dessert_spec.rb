require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  # let(:dessert) { double("dessert", :type => 'brownie', :quantity => 20, :chef => chef )}
  # :dessert.stub!()
  let(:dessert) { Dessert.new('brownie', 20, chef)}
  let(:invalid_dessert_quantity) { Dessert.new( "brownie", "twenty", chef)}

  describe "#initialize" do

    it "sets a type" do
      expect(dessert.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      # allow(dessert).to receive(:initialize)
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{invalid_dessert_quantity}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('chocolate')
      expect(dessert.ingredients).to eq(["chocolate"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("rum")
      dessert.add_ingredient("chocolate")
      expect(dessert.mix!).to match_array(['chocolate', 'rum'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(5)
      expect(dessert.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{ dessert.eat(30) }.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize)
      expect(dessert.serve).to match(/#{chef.titleize}/)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake)

      expect(chef).to receive(:bake)
      dessert.make_more
    end
  end
end
