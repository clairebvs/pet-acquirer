require 'rails_helper'

describe Pet do
  let(:pet_data) {
    [
                {
                    "options": {
                        "option": {
                            "$t": "altered"
                        }
                    },
                    "status": {
                        "$t": "A"
                    },
                    "contact": {
                        "phone": {
                            "$t": "303-751-5772  "
                        },
                        "state": {
                            "$t": "CO"
                        },
                        "address2": {},
                        "email": {
                            "$t": "customercare@ddfl.org"
                        },
                        "city": {
                            "$t": "Denver"
                        },
                        "zip": {
                            "$t": "80231"
                        },
                        "fax": {},
                        "address1": {
                            "$t": "2080 S. Quebec St."
                        }
                    },
                    "age": {
                        "$t": "Adult"
                    },
                    "size": {
                        "$t": "L"
                    },
                    "media": {
                        "photos": {
                            "photo": [
                                {
                                    "@size": "pnt",
                                    "$t": "http://photos.petfinder.com/photos/pets/43688264/1/?bust=1546603621&width=60&-pnt.jpg",
                                    "@id": "1"
                                },
                                {
                                    "@size": "fpm",
                                    "$t": "http://photos.petfinder.com/photos/pets/43688264/1/?bust=1546603621&width=95&-fpm.jpg",
                                    "@id": "1"
                                },
                                {
                                    "@size": "x",
                                    "$t": "http://photos.petfinder.com/photos/pets/43688264/1/?bust=1546603621&width=500&-x.jpg",
                                    "@id": "1"
                                },
                                {
                                    "@size": "pn",
                                    "$t": "http://photos.petfinder.com/photos/pets/43688264/1/?bust=1546603621&width=300&-pn.jpg",
                                    "@id": "1"
                                },
                                {
                                    "@size": "t",
                                    "$t": "http://photos.petfinder.com/photos/pets/43688264/1/?bust=1546603621&width=50&-t.jpg",
                                    "@id": "1"
                                }
                            ]
                        }
                    },
                    "id": {
                        "$t": "43688264"
                    },
                    "shelterPetId": {
                        "$t": "A0796290"
                    },
                    "breeds": {
                        "breed": [
                            {
                                "$t": "Pit Bull Terrier"
                            },
                            {
                                "$t": "Labrador Retriever"
                            }
                        ]
                    },
                    "name": {
                        "$t": "MAYA"
                    },
                    "sex": {
                        "$t": "F"
                    },
                    "description": {
                        "$t": "LET'S PLAY BALL!  Favorite Things: Walks, sitting for treats, chasing the ball!  Special Features: Good on the leash here at the shelter; No children under 12 in new home; Recommend she be placed with an experienced owner  Dream Home: A place to grow and learn with an experienced owner in an area without breed restrictions."
                    },
                    "mix": {
                        "$t": "yes"
                    },
                    "shelterId": {
                        "$t": "CO316"
                    },
                    "lastUpdate": {
                        "$t": "2019-01-04T08:31:56Z"
                    },
                    "animal": {
                        "$t": "Dog"
                    }
                }
              ]
            }
  subject { Pet.new(pet_data) }

    it "exists" do
      expect(subject).to be_a(Pet)
    end

    context "instance methods" do
      context "#name" do
        it "returns a name" do
          expect(subject.name).to eq("MAYA")
        end
      end

      context "#photo" do
        it "returns a photo url" do
          expect(subject.photo).to eq("http://photos.petfinder.com/photos/pets/43688264/1/?bust=1546603621&width=60&-pnt.jpg")
        end
      end

      context "#age" do
        it "returns an age" do
          expect(subject.age).to eq("Adult")
        end
      end

      context "#size" do
        it "returns a size" do
          expect(subject.size).to eq("L")
        end
      end
    end
end
