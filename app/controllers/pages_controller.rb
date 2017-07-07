class PagesController < ApplicationController
end

class PagesController < ApplicationController
    def show
        render template: "pages/#{params[:page]}"
    end
end  