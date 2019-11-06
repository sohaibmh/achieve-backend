class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :date
  belongs_to :user

  def author_email
    self.object.user.email
  end
end
