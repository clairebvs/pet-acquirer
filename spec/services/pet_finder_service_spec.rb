require 'rails_helper'

describe PetFinderService do
  subject { PetFinderService.new }

  it "exists" do
    expect(subject).to be_a PetFinderService
  end

  context "instance methods" do
    context "#picture" do
      it "returns a hash with picture data" do
        data_picture = subject.pictures

        expect(data_picture).to have_key :media
        expect(data_picture).to have_key :breeds
        expect(data_picture).to have_key :name
      end
    end
  end
end
