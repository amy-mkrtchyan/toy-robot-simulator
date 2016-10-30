require 'rspec'
require 'rspec/expectations'

require_relative '../paths.inc.rb'

RSpec::Matchers.define :be_positioned_at do |e_x,e_y,e_f|
  match do |r|
    [r.x, r.y, r.f.to_compass] == [e_x, e_y, e_f]
  end
end
