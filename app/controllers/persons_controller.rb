class PersonsController < ActionController::Base
  respond_to :json

  def show
    person = Person.find_by_my_id(params[:id])
    render json: { severity: person.severity, status: person.status }
  end
end