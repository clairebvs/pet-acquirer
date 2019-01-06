require 'rails_helper'

describe Picture do
  let(:picture_data) {
    {
      name: "Duke",
      photo: "http://photos.petfinder.com/photos/pets/42878117/1/?bust=1538149801&width=500&-x.jpg",
      breed: "German Shepherd Dog"
    }
  }

  subject { Picture.new(picture_data) }

  it "exists" do
    expect(subject).to be_a(Picture)
  end

  context "instance methods" do
    context "#name" do
      it "returns a name" do
        expect(subject.name).to eq("UDR")
      end
    end
  end
end
