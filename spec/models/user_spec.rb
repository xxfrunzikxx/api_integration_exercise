require 'spec_helper'

describe 'User' do
  let!(:person) {Person.create({ severity: "high", status: "out-of-date"})}
  let!(:user){User.create()}

  it 'should return same status' do
    user.person_id = person.id
    user.status.should eq(person.status)
  end
end