class PagesController < ApplicationController
    def index
    end
    def results
        @search = params[:search]
    end

    def saved
        @concerts = Concert.all
    end

    def about
    end

end