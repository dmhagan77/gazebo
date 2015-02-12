class RetroItem < ActiveRecord::Base
  enum happiness: ['happy', 'meh', 'sad']

end
