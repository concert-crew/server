# frozen_string_literal: true

module Api
  module V1
    class EventsController < ApplicationController
      def show
        events = EventsFacade.get_events(search_params[:keyword], search_params[:city])
        if !events.nil?
          render json: EventSerializer.new(events)
        else
          render json: { errors: "No events found" }, status: 404
        end
      end

      private

      def search_params
        params.permit(:keyword, :city)
      end
    end
  end
end
