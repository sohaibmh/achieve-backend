class GoalSerializer < ActiveModel::Serializer
  attributes :id

  attributes :id, :name, :calendars
  belongs_to :user

  # def author_email
  #   self.object.user.email
  # end
end
