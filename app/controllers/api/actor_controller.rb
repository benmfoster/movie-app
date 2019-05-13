class Api::ActorController < ApplicationController

    def id
        @actor = Actor.find(:id)
        render 'actor.json.jbuilder'
    end

    def query
        @actor = params[:actor]
        render 'query_actor.json.jbuilder'
    end

    def url
        @actor = params[:wildcard]
        render 'actor_url.json.jbuilder'
    end

    def body
        @actor = params[:actor]
        render 'body_actor.json.jbuilder'
    end
    
end
