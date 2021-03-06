class Person
 def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    [@first_name, @middle_name, @last_name].compact.join(' ')
  end

  def full_name_with_middle_initial
    return full_name if @middle_name.nil?
    [@first_name, @middle_name[0] << '.', @last_name].join(' ')
  end

  def initials
    return @first_name[0] << @last_name[0] if @middle_name.nil?
    @first_name[0] << @middle_name[0] << @last_name[0]
  end
end