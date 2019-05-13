class Api::ActorController < ApplicationController

    def id
        @actor = Actor.find(:id)
        render 'actor.json.jbuilder'
    end
end
