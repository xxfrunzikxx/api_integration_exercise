class User < ActiveRecord::Base
  def status
    res = HTTParty.get("http://localhost:3000/persons/#{self.person_id}.json")
    case response.code
      when 200
        JSON.parse(res.body)["status"]
      when 404
        "NOT FOUND"
      when 500...600
        "SERVER ERROR #{response.code}"
    end
  rescue
    "UNHANDLED ERROR"
  end

  def severity
    res = HTTParty.get("http://localhost:3000/persons/#{self.person_id}.json")
    case res.code
      when 200
        JSON.parse(res.body)["severity"]
      when 404
        "NOT FOUND"
      when 500...600
        "SERVER ERROR #{res.code}"
    end
  rescue
    "UNHANDLED ERROR"
  end
end
