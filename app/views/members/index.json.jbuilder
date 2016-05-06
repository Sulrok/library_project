json.array!(@members) do |member|
  json.extract! member, :id, :userName, :password_digest, :name, :surrName, :email, :addr1, :addr2, :tel, :isActive, :isAdmin
  json.url member_url(member, format: :json)
end
