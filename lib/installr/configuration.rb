module Installr
  class Configuration
    def self.init(api_token)
      File.open(config_file, 'w') { |file| file.write("#{api_token}\n") }
      say green('Created ~/.installr')
      say green("Added `#{api_token}` in ~/.installr")
    end

    def self.add_token(api_token)
      if File.readlines(config_file).map { |l| l.slice(0, l.size - 1) }.include?(api_token)
        return say red("API Token '#{api_token}' is already existed")
      end
      File.open(config_file, 'a') { |file| file.write("#{api_token}\n") }
      say green("Added `#{api_token}` in ~/.installr")
    end

    def self.config_file
      File.join(ENV['HOME'],'.installr')
    end
  end
end
