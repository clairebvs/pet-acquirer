require 'rails_helper'

describe PetFacade do
  subject { PetFacade.new }

  it 'exists' do
    expect(subject).to be_a(PetFacade)
  end

  context 'instance methods' do
    context '#pet_found' do
      it 'returns a random picture' do
        expect(subject.pet_found).to be_a(Pet)
      end
    end
  end
end
