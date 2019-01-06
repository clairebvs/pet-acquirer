require 'rails_helper'

describe PictureFacade do
  subject { PictureFacade.new }

  it 'exists' do
    expect(subject).to be_a(PictureFacade)
  end

  context 'instance methods' do
    context '#random_picture' do
      it 'returns a random picture' do
        expect(subject.random_picture).to be_a(Picture)
      end
    end
  end
end
