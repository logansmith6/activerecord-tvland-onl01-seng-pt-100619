class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_full_name = []

    self.actors.each do |actor|
      full_n = actor.first_name + ' ' + actor.last_name
      actors_full_name << full_n
    end
    actors_full_name
  end
end
