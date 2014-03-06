require 'spec_helper'

describe 'User' do
  let!(:user){ User.create(person_id: 1) }

  it 'should return same status' do
    user.status.should eq("out-of-date")
  end
end