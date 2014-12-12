json.array!(@members) do |member|
  json.extract! member, :id, :email, :password, :fname, :lname
  json.url member_url(member, format: :json)
end
