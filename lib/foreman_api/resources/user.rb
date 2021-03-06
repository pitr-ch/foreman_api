module ForemanApi
  module Resources
    class User < ForemanApi::Base

      def index(params = {}, headers = {})
        call(:get, "/api/users", :headers => headers)
      end

      def show(id, params = {}, headers = {})
        call(:get, "/api/users/#{id}", :headers => headers)
      end

      def create(params = {}, headers = {})
        validate_params!(params, {"user"=>["login", "firstname", "lastname", "mail", "admin"]})
        call(:post, "/api/users", :payload => params, :headers => headers)
      end

      def update(id, params = {}, headers = {})
        validate_params!(params, {"user"=>["login", "firstname", "lastname", "mail", "admin"]})
        call(:put, "/api/users/#{id}", :payload => params, :headers => headers)
      end

      def destroy(id, params = {}, headers = {})
        call(:delete, "/api/users/#{id}", :headers => headers)
      end

    end
  end
end
