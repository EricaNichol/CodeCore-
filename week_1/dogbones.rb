class Dog
  #Screaming case, use for constant
  MAX_BONE_CAPACITY = 3
  #You can access this from the outside using this code:
  # Dog::MAX_BONE_CAPACITY ***  double ::
  def initialize(color, type)
    @color, @type = type, color
    @bones        = []
  end

  def give(bone)
    if @bones.count >= MAX_BONE_CAPACITY
      puts "I have too many bones!"
    else
      @bones << bone
    end
  end

    def eat
      if @bones.count == 0
        puts "I have no bones"
      else
        bone = @bones.pop #pop pops last digit out
        puts "I ate a #{bone.size} bone."
      end
    end
end
