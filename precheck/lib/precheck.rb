require 'fastlane_core'
require 'precheck/runner'
require 'precheck/options'

module Precheck
  # Use this to just setup the configuration attribute and set it later somewhere else
  class << self
    attr_accessor :config

    def precheckfile_name
      "Precheckfile"
    end
  end

  Helper = FastlaneCore::Helper # you gotta love Ruby: Helper.* should use the Helper class contained in FastlaneCore
  UI = FastlaneCore::UI
  ROOT = Pathname.new(File.expand_path('../..', __FILE__))

  ENV['APP_IDENTIFIER'] ||= ENV["PRECHECK_APP_IDENTIFIER"]

  DESCRIPTION = 'Check your app using a community driven set of App Store review rules to avoid being rejected'
end
