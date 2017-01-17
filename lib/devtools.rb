require "devtools/version"
require 'optparse'
require 'ostruct'

module Devtools
  class DevToolsProject
    def install (appname)
        puts colorize("App to install #{appname}", "yellow")
    end

    def setupEnvironment (environment)
        puts colorize("Environment to setup #{environment}", "yellow")
    end

    def parseInput()
      params = OpenStruct.new
      OptionParser.new do |opt|
        opt.on('-i', '--install APP_NAME', 'The flag used to indicate the tool that needs to be installed.') { |o| params.app_name = o }
        opt.on('-s', '--setup ENVIRONMENT', 'The development environment to setup.') { |o| params.environment_name = o }
      end.parse!

      if params.app_name.to_s.strip.length == 0  && params.environment_name.to_s.strip.length == 0
        puts colorize("Error: Missing option", "Red")
        options = %x( devtools -h )
        puts options
        exit
      else
        return params
      end
    end

    def checkIfBrewInstalled()
      check_brew = %x( which brew )
      if check_brew == "brew not found"
        return false
      else
        return true
      end
    end

    def colorize(text, color = "default", bgColor = "default")
      colors = {"default" => "38","black" => "30","red" => "31","green" => "32","brown" => "33", "blue" => "34", "purple" => "35",
                "cyan" => "36", "gray" => "37", "dark gray" => "1;30", "light red" => "1;31", "light green" => "1;32", "yellow" => "1;33",
                "light blue" => "1;34", "light purple" => "1;35", "light cyan" => "1;36", "white" => "1;37"}
      bgColors = {"default" => "0", "black" => "40", "red" => "41", "green" => "42", "brown" => "43", "blue" => "44",
                  "purple" => "45", "cyan" => "46", "gray" => "47", "dark gray" => "100", "light red" => "101", "light green" => "102",
                  "yellow" => "103", "light blue" => "104", "light purple" => "105", "light cyan" => "106", "white" => "107"}
      color_code = colors[color]
      bgColor_code = bgColors[bgColor]
      return "\033[#{bgColor_code};#{color_code}m#{text}\033[0m"
    end
  end
end
