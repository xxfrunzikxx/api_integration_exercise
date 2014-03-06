class PersonsController < ActionController::Base
  respond_to :json

  def show
    person = Person.find_by_my_id(params[:id])
    if person
      render json: { severity: person.severity, status: person.status }
    else
      render json: nil, status: 404
    end
  end
end