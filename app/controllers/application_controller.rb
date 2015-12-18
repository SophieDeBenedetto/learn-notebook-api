class ApplicationController < ActionController::API
  include ActionController::Serialization

  # before_filter :cors_preflight_check

  # def cors_preflight_check
  #   binding.pry
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
  #   headers['Access-Control-Request-Method'] = '*'
  #   headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  # end
end
