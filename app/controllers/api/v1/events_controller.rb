# frozen_string_literal: true

module Api
  module V1
    class EventsController < ApplicationController
      def show
        events = EventsFacade.get_events(search_params[:keyword])
        if !events.nil?
          render json: EventSerializer.new(events)
        else
          render json: { errors: "No events found" }, status: 404
        end
      end

      private

      def search_params
        params.permit(:keyword)
      end
    end
  end
end
