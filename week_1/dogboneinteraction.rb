require "./dogbones.rb"
require "./dogbonesbone.rb"

dog = Dog.new("White","Poodle")
dog.eat

bone   = Bone.new("Small")
bone_1 = Bone.new("Medium")
bone_2 = Bone.new("Large")
bone_3 = Bone.new("X-large")

dog.give(bone)
dog.give(bone_2)
dog.give(bone_3)
dog.give(bone_4)

dog.eat
dog.eat
dog.eat
dog.eat
