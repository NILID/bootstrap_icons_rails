require_relative 'parse_methods'

class BiIconParser
  include ActionView::Helpers::TagHelper
  include ParseMethods

  attr_reader :icon, :options, :data, :style, :text, :title, :right, :attrs

  def initialize(icon, options)
    @icon = icon
    @options = options
    @data = options[:data]
    @style = options[:style]
    @text = options[:text]
    @title = options[:title]
    @right = options[:right] == true
    @attrs = options.except(:text, :class, :icon, :size, :right)
  end

  def classes
    @classes ||= parse_classes
  end

  def sizes
    @sizes ||= @options[:size].nil? ? '' : arr_with_bi(@options[:size]).uniq.join(' ').strip
  end

  def get_content_tag
    if @text.nil?
      icon_content_tag
    else
      @right ? (text_content_tag + icon_content_tag) : (icon_content_tag + text_content_tag)
    end
  end

  private

  def parse_classes
    tmp = []
    tmp << icon_type(@options[:type])
    tmp += arr_with_bi(@icon)
    tmp += @options[:class].split(' ') unless @options[:class].nil?
    tmp += arr_with_bi(@options[:size]) unless @options[:size].nil?
    tmp.uniq.join(' ').strip
  end

  def icon_content_tag
    content_tag(:i, nil, class: classes, **@attrs)
  end

  def text_content_tag
    content_tag(:span, @text, class: "#{@right ? 'bi-text-r' : 'bi-text'}#{' ' unless sizes.blank?}#{sizes}", style: @style)
  end
end
