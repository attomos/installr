require 'mechanize'
require 'certified'

module Installr
  module InstallrApp
    HOST = ''
    class ApiToken < Struct.new(:tokens)
      def to_s
        "#{self.tokens.inspect}"
      end
    end
    class App < Struct.new(:title, :app_id, :id, :auto_sync, :adp_email, :latest_build, :plan_info, :app_events, :payment_info, :builds)
      def to_s
        "#{self.name} #{self.udid} #{self.enabled}"
      end
    end
    class Build < Struct.new(:releate_notes, :version_number, :id, :date_created, :build_file, :icon, :number_installed)
    end
  end
end

require 'installr_app/agent'
