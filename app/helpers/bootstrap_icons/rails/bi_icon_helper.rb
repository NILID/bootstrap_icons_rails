require 'bootstrap_icons_rails/parsers/bi_icon_parser'

module BootstrapIcons
  module Rails
    module BiIconHelper

      def bi_icon(icon, options = {})
        parser = BiIconParser.new(icon, options)
        parser.get_content_tag
      end
    end
  end
end
