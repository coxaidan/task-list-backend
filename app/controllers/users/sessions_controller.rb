class Users::SessionsController < Devise::SessionsController
    respond_to :json
  
    private
  
    def respond_with(_resource, _opts = {})
      log_in_success && return if current_user
  
      log_in_failure
    end
  
    def respond_to_on_destroy
      log_out_success && return if current_user
  
      log_out_failure
    end
  
    def log_out_success
      render json: { message: 'You are logged out.' }, status: :ok
    end
  
    def log_out_failure
      render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
    end

    def log_in_success
      render json: { message: 'Successfully logged in.', user: current_user}, status: :ok
    end

    def log_in_failure
      render json: { message: 'Unsucessful login.', user: current_user}, status: :unauthorized
    end

  end