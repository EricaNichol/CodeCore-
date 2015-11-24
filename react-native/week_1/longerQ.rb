questions = ["What is your name", "How are you?",
  "Is that right?", "Are you John?", "How is everything"]

length = []

questions.max_by do |x|
  if x.length > 15
    puts x, "  "
end
end
