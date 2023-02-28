class PagesController < ApplicationController
    def index
    end
    def results
        @search = params[:search]
    end
end