class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :date
  belongs_to :goal

  def author_email
    self.object.user.email
  end
end
