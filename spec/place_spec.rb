require 'spec_helper'
require_relative '../lib/place'

describe Place do

  let(:empty) { Place.new }
  let(:filled) { Place.new(filled) }

  it 'should be an instance of Place' do
    expect(empty()).to be_an_instance_of(Place)
    expect(filled()).to be_an_instance_of(Place)
  end

  it 'should denote filled places' do
    expect(filled.filled).to eq(true)

    empty.filled(true)
    expect(empty.filled).to eq(true)
  end
end
