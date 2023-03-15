class PagesController < ApplicationController
    def index
    end
    def results
        @search = params[:search]
        #@search = params[:search]
        #if @search.scan("event/").length() == 1
        #    @eventid = @search[@search.index("event/") + 6, @search.length];
        #    @eventid = @eventid[0, @eventid.index("/")];
        #    logger.info("https://app.ticketmaster.com/discovery/v2/events/"+@eventid+"?apikey=1nY9PFwNWRRt8iHq201xLTQWjj4EW6Uh")
        #else
        #    @search = "Unknown URL";
        #end
        #https://app.ticketmaster.com/discovery/v2/events.json?apikey=1nY9PFwNWRRt8iHq201xLTQWjj4EW6Uh&classificationName=music&city=denver&stateCode=CO

    end


    def saved
        @concerts = Concert.all
    end

    def about
    end

end