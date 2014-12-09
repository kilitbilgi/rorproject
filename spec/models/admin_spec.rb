require 'rails_helper'

describe Member do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        member = Member.new(
            :id => "1",
            :email=> "kilitbilgi@gmail.com",
            :crypted_password=> "0216bc0c772943170d79ea602bbd4184",
            :salt=> "0216bc0c7",
            :updated_at => DateTime.now ,
            :created_at =>DateTime.now
        )
        member.should be_valid
      end

    end

  end
end
