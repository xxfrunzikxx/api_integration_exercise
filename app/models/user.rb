class User < ActiveRecord::Base
  # TODO metaprogram
  def status
    res = HTTParty.get("http://localhost:3000/persons/#{self.person_id}.json")
    handle_response(res, "status")
  end

  def severity
    res = HTTParty.get("http://localhost:3000/persons/#{self.person_id}.json")
    handle_response(res, "severity")
  end
  
  private
  def handle_response(res, field)
    case res.code
      when 200
        JSON.parse(res.body)[field]
      when 404
        "NOT FOUND"
      when 500...600
        "SERVER ERROR #{res.code}"
    end
  rescue
    "UNHANDLED ERROR"
  end
end
