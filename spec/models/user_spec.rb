require 'spec_helper'

describe 'User' do
  let!(:user_1){ User.create(person_id: 1) }
  let!(:user_2){ User.create(person_id: 2) }
  let!(:user_3){ User.create(person_id: 15) }

  it 'should return same status' do
    user_1.status.should eq("out-of-date")
  end

  it 'should return same severity' do
    user_1.severity.should eq("low")
  end

  it 'should return same severity' do
    user_3.severity.should eq("UNHANDLED ERROR")
  end

  it 'should return error' do
    user_3.status.should eq("UNHANDLED ERROR")
    user_3.status.should eq("UNHANDLED ERROR")
  end
end