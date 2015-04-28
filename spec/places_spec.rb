require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe("#description") do
    it("lets you give a place you have visted") do
      test_place = Place.new("Seattle")
      expect(test_place.description()).to(eq("Seattle"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of visted places") do
      test_place = Place.new("Boston")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("clears out the places list") do
      Place.new("Boston").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
