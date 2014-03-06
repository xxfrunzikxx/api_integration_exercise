class User < ActiveRecord::Base
  def status
    res = HTTParty.get("http://localhost:3000/persons/#{self.person_id}")
    JSON.parse(res.body)["status"]
  end

  def severity
    res = HTTParty.get("http://localhost:3000/persons/#{self.person_id}")
    JSON.parse(res.body)["severity"]
  end
end
