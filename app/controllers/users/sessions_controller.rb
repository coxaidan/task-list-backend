class Users::SessionsController < Devise::SessionsController
    respond_to :json

    private

    respond_with(_resource, _opts = {})
        render json: {
            message: 'You are logged in.',
            user: current_user
        }, status: :ok
    end

    def respond_to_on_destroy
        logged_out_success && return if current_user

        log_out_failure
    end

    def logged_out_success
        render json: { message: 'You are logged out.' }, status: :ok
    end

    def log_out_failure
        render json: { message: 'Hmm nothing happend.' }, status: :unauthorized
    end
end