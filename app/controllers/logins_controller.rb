class LoginsController < ApplicationController
  def new
    @attempt = Auth::Attempt.new(params: params.to_unsafe_h)
  end

  def create
    @attempt = Auth::Attempt.new(params: params.to_unsafe_h)
    #tu ide neki login

    redirect_to @attempt.remote_url
  end
end
