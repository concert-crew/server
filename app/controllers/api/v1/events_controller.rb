# frozen_string_literal: true

module Api
  module V1
    class EventsController < ApplicationController
      def show
        events = EventsFacade.get_events(search_params[:keyword])
        require 'pry'; binding.pry 
        render json: EventSerializer.new(events)
      end

      private

      def search_params
        params.permit(:keyword)
      end
    end
  end
end
