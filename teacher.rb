class Teacher
  KITTY_LOVE_LEVELS = [:hatred, :tolerance, :owns_cats, :loves_cats, :cat_lady]
  UKULELE_SKILL_LEVELS = [:beginner, :novice, :intermediate, :advanced, :hawaiian_shred_master]
  NUNCHUCK_SKILL_LEVELS = [:newb, :novice, :intermediate, :napolean_dynamite, :michelangelo]

  attr_reader :first_name, :last_name, :kitten_love
  attr_accessor :years_experience, :ukulele_skill, :nunchuck_skill, :location

  def initialize(args)
    @first_name = args[:first_name]
    @last_name = args[:last_name]
    self.years_experience = args.fetch(:years_experience)
    self.ukulele_skill = args.fetch(:ukulele_skill, :beginner)
    self.nunchuck_skill = args.fetch(:nunchuck_skill, :newb)
    @kitten_love = args.fetch(:kitten_love, :hatred)
    self.location = args[:location]
  end

  def to_s
    inspect
  end

end
