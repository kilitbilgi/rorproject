require 'rails_helper'

describe Admin do

  describe "creation" do

    context "valid attributes" do

      it "should be valid" do
        admin = Admin.new(
            :fname => "burak",
            :lname => "çolak",
            :password_salt => "123456",
            :password_hash => "123456",
            :email => "kilitbilgi@gmail.com",
            :updated_at => DateTime.now ,
            :created_at =>DateTime.now
        )
        admin.should be_valid
      end

    end

  end
end
