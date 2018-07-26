require "Koyaaan/version"
require "Koyaaan/convert"
require "Koyaaan/convert_random"
require "Koyaaan/statuses_controller"

module Koyaaan
  def self.setup(&proc)
    # create function for Monkey patch
    extend self
    (
    class << self;
      self
    end).module_eval do
      define_method 'convert_toot', &proc
      # define_method 'b' do
      #   p 'b'
      # end
    end

    # Monkey patch
    Api::V1::StatusesController.prepend(ApiV1StatusesControllerPatch)
  end
end
