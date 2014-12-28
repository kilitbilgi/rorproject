require 'rails_helper'

describe Member do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        member = Member.new(
            :fname => "burak",
            :lname => "çolak",
            :password=>"1",
            :password_salt => "123456",
            :password_hash => "123456",
            :email => "kilitbilgi@gmail.com",
            :birthdate => "1993-07-25",
            :cellphone => "05333730695",
            :updated_at => DateTime.now ,
            :created_at =>DateTime.now
        )
        member.should be_valid
      end

    end

  end
end
