class RetroItem < ActiveRecord::Base
  enum item_type: ['retro', 'action', 'best_practice']
  enum happiness: ['happy', 'meh', 'sad']
end
