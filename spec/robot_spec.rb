require 'spec_helper'

describe Robot do

  describe '#set_position!' do
    it 'places Robo at given position' do
      subject.set_position!(0,1,'west')
      expect(subject).to be_positioned_at(0,1,'west')
    end
  end

  describe '#rotate_left!' do
    it 'rotates Robo to left' do
      subject.set_position!(0,1,'west').rotate_left!
      is_expected.to be_positioned_at(0,1,'south')
    end
  end

  describe '#rotate_right!' do
    it 'rotates Robo to right' do
      subject.set_position!(0,1,'west').rotate_right!
      is_expected.to be_positioned_at(0,1,'north')
    end
  end

  describe '#move!' do
    it 'moves Robo one step' do
      subject.set_position!(0,1,'north').move!
      is_expected.to be_positioned_at(0,2,'north')
    end
    it 'does nothing until Robo placed' do
      expect { move! }.to raise_error StandardError
    end
    it 'does nothing if Robo is on the border' do
      expect { set_position!(0,1,'west') }.to raise_error StandardError
    end
  end

  describe '#report' do
    it "reports Robo's current position" do
      subject.set_position!(0,1,'north')
      expect( subject.report ).to include(x:0, y:1, f:'north', arrow:' ▲ ')
    end
  end

  describe '#next_step' do
    it "calculates Robo's next step for move" do
      subject.set_position!(0,1,'north')
      expect( subject.next_step ).to include(0,2)
    end
  end

end
