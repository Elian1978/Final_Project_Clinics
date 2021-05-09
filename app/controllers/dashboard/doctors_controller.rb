class Dashboard::DoctorsController < ApplicationController
    before_action :authenticate_admin!

def index
#  @pie_chart = Appointment.group_by_month(:created_at, last: 12).count

# @pie_chart = Appointment.joins(:doctor).group("doctors.name").count
 @pie_chart =  Appointment.joins(:clinic).group("clinics.name").count

# @pie_chart = Appointment.where(created_at: 1.months.ago..Date.today).group(:doctor).count

puts 'pie_chart'
end
end

  
