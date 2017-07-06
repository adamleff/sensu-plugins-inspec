#! /usr/bin/env ruby

require 'sensu-plugin/check/cli'
require 'inspec'

class CheckInspec < Sensu::Plugin::Check::CLI
  option :profile,
         short: "-p PROFILE_PATH",
         long: "--profile PROFILE_PATH",
         description: "Path (URI or local) to an InSpec profile to execute",
         required: true

  def run
    runner = Inspec::Runner.new({})
    runner.add_target(config[:profile], {})
    if runner.run == 0
      ok "Profile executed successfully, no control failures"
    else
      critical "Profile executed successfully with control failures"
    end
  rescue => e
    unknown "Unable to run InSpec: #{e.message}"
  end
end
