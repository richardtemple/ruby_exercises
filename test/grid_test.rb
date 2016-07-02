require 'test_helper'
require 'grid'
require 'grid_data'

describe Grid do
  describe ".largest_product" do
    it "calculates the largest product of 4 adjacent (horizontal, vertical, diagonal) numbers in given grid" do
      Grid.largest_product(GridData::G1).must_equal 61_642_944
      Grid.largest_product(GridData::G2).must_equal 77_006_457
    end
  end
end
