require 'rails_helper'

describe Rental do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        rental = Rental.new(
            :location => "ankara",
            :pickupdate => "2014-12-28",
            :dropoffdate => "2014-12-30",
            :cars_id => "1",
            :members_id => "4",
            :updated_at => DateTime.now ,
            :created_at =>DateTime.now
        )
        rental.should be_valid
      end

    end

  end
end
