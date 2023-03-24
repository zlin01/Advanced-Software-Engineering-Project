require 'ticketmaster-sdk'
class PagesController < ApplicationController
    def index
    end
    def results
        
        #search_term = params[:search]
        #params = {keyword: search_term, page: 5, size: 10, source: 'ticketmaster'}
        params = {page: 5, size: 10, source: 'ticketmaster'}
        client = Ticketmaster.client(apikey: '1nY9PFwNWRRt8iHq201xLTQWjj4EW6Uh')
        response = client.search_events(params: params)
        @events = response.results
        #@search = search_term

    end


    def saved
        @concerts = Concert.all
    end

    def about
    end

end