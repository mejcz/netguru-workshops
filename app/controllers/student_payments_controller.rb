class StudentPaymentsController < ApplicationController
  expose(:student_payments) { StudentPayment.includes(:student).order(:student_id, :due_date) }
end
