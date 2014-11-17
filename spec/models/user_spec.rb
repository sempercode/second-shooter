require 'rails_helper'

describe User do
 it "is invalid with a duplicate email address" do
    user = User.create(
      first_name: 'Joe', last_name: 'Tester',
      email: 'tester@example.com'
    )
    user = User.new(
      first_name: 'Jane', last_name: 'Tester',
      email: 'tester@example.com'
    )
   user.valid?
 end

   it 'should validate presence of email' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:email]).to include "Can't be blank."
  end

  it 'should validate presence of password' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:encrypted_password]).to include "Can't be blank."
  end

  it 'should validate presence of first name' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:first_name]).to include "Can't be blank."
  end

  it 'should validate presence of last name' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:last_name]).to include "Can't be blank."
  end

  it 'should validate presence of website' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:website]).to include "Can't be blank."
  end

  it 'should validate presence of hourly rate' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:hourly_rate]).to include "Can't be blank."
  end

  it 'should validate presence of location' do
    user = User.new
    user.valid?
    expect(user.errors.messages[:location]).to include "Can't be blank."
  end
end