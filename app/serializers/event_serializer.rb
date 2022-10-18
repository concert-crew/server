class EventSerializer
  class << self
    def new(events)
      require 'pry'; binding.pry 
      {
        data: {
          id: nil,
          type: 'event',
          attributes: {
          }
        }
      }
    end
  end
end