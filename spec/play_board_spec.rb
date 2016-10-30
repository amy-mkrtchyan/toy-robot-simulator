require 'spec_helper'

describe PlayBoard do

  describe '#new' do
    it { is_expected.to be_a PlayBoard }
    it { is_expected.to have_attributes(size_x: 5, size_y: 5) }
  end

  describe '#covers?' do
    specify do
      expect( subject.covers? 3, 2 ).to be true
    end
    specify do
      expect( subject.covers? 10, 20 ).to be false
    end
  end

end
