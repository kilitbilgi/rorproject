require 'rails_helper'

describe Option do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        option = Option.new(
            :opt_key => "site_title",
            :opt_val => "Renta",
            :updated_at => DateTime.now ,
            :created_at =>DateTime.now
        )
        option.should be_valid
      end

    end

  end
end
