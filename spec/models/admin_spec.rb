require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "Admin is valid" do
    admin = Admin.new(name: 'Renato',email: "admin@example.com", password: "teste@123")

    expect(admin.email).to eq("admin@example.com")
    expect(admin).to be_valid
  end

  it "Admin is not valid" do
    admin = Admin.new(email: "admin@example.com")    
    expect(admin).to_not be_valid
  end
end
