class PersonsController < ActionController::Base
  respond_to :json

  def show
    respond_with json: {severity: User.severity, status: User.status}
  end
end