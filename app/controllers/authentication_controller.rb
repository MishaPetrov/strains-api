class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request


end
