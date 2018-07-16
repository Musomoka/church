module UpcomingsHelper

  def start_date(var)
    var.start.to_date
  end

  def self.end_date(var)
    var.end.to_date
  end


end
