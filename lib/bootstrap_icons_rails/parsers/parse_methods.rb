module ParseMethods
  def icon_type(type)
    return "bi"
  end

  def prepend_bi(string)
    "bi-#{string}"
  end

  def arr_with_bi(array)
    array = handle_input(array)
    array.split(' ').map{ |s| prepend_bi(s) }
  end

  private

  def handle_input(input)
    case input
    when Symbol
      input.to_s.dasherize
    when Array
      input.join(' ').dasherize
    else
      input.to_s
    end
  end
end
