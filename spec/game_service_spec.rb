require 'spec_helper'

describe GameService do

  describe '#new' do
    it {is_expected.to be_a GameService}
  end

  describe '#handle_command' do
    it do
      subject.handle_command('PLACE 0, 1, WEST')
      expect(subject.robot).to be_positioned_at(0,1,'west')
    end
  end

  describe '#handle_composite' do
    it do
      subject.handle_composite('sample_command_sets.yml')
      expect(subject.robot).to be_positioned_at(3,3,'north')
    end
  end

end
