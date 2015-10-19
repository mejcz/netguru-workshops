class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    average = subject_item_notes.for_subject_item(subject_item).average(:value)
    sprintf('%.2f', average || 0)
  end
end
