require 'rails_helper'

describe Picture do
  let!(:picture_data) {
    { "options": {
                "option": [
                    {
                        "$t": "altered"
                    },
                    {
                        "$t": "housetrained"
                    }
                ]
      },
            "media": {
                "photos": {
                    "photo": [
                        {
                            "@size": "pnt",
                            "$t": "http://photos.petfinder.com/photos/pets/42878117/1/?bust=1538149801&width=60&-pnt.jpg",
                            "@id": "1"
                        },
                    ]
                }
            },
            "breeds": {
                "breed": [
                    {
                        "$t": "German Shepherd Dog"
                    },
                    {
                        "$t": "Border Collie"
                    }
                ]
            },
            "name": {
                "$t": "Duke"
            }
          }
}

  subject { Picture.new(picture_data) }
  it "exists" do
    expect(subject).to be_a(Picture)
  end

  context "instance methods" do
    context "#name" do
      it "returns a name" do
        expect(subject.name).to eq("None yet")
      end
    end

    context "#photo" do
      it "returns a photo url" do
        expect(subject.photo).to eq("http://photos.petfinder.com/photos/pets/43526885/1/?bust=1546876745&width=60&-pnt.jpg")
      end
    end

    context "#breed" do
      it "returns a breed name" do
        expect(subject.breed).to eq("Unknown")
      end
    end
  end
end
