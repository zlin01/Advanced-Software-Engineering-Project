require 'ticketmaster-sdk'
class PagesController < ApplicationController
    def index
    end
    def results

        if params.key?(:concert_name) && params.key?(:concert_id)
            @concert = Concert.create(band: params[:concert_name], location: session[:search], ticketmaster_id: params[:concert_id])
            User.add_concertlist(@concert)

        elsif params[:search].present?
            session[:search] = params[:search]
            #params = {keyword: search_term, page: 5, size: 10, source: 'ticketmaster'}
        end
        search_term = session[:search]
        search_params = {city: search_term}
        client = Ticketmaster.client(apikey: '1nY9PFwNWRRt8iHq201xLTQWjj4EW6Uh')
        response = client.search_events(params: search_params)
        @events = response.results

    end

    def saved
        @concerts = User.concertlist
    end

    def about
    end

end