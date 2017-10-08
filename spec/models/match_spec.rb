require 'rails_helper'

RSpec.describe Match do

  let(:match) { create :match }

  it 'works' do
    expect(match).to be_a Match
  end

  it 'is valid' do
    expect(match).to be_valid
  end
end
