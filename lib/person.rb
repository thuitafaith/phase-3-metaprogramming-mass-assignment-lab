# class Person
#   # your code here
#   attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
#   :weight, :handed, :complexion, :t_shirt_size,
#   :wrist_size, :glove_size, :pant_length, :pant_width

#   def initialize (attributes)
#     attributes.each do |key, value|
#       self.send("#{key}=", value)
#     end
#   end

# end
# DRY 
class Person
  
  def initialize(attributes = nil)
    if attributes
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
  
end

