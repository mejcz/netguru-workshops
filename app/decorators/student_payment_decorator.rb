class StudentPaymentDecorator < BaseDecorator
  def paid
    !!paid_date
  end
end
