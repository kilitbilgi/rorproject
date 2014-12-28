require 'rails_helper'

describe Car do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        car = Car.new(
            :title=> "Hello",
            :make=> "Renault",
            :model=> "Clio",
            :year_info => "2012",
            :color => "silver",
            :fueltype => "diesel",
            :hp => "75",
            :price => "50",
            :stock => "3",
            :updated_at => DateTime.now ,
            :created_at =>DateTime.now
        )
        car.should be_valid
      end

    end

  end
end
