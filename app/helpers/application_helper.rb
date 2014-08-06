module ApplicationHelper

  # Returns the full title on a per-page basis.
  def title
    base_title = "Bejben"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  def post_time(time)
    t1 = time
    t2 = Time.now+1
    t3 = t2-t1
    if t3 <= 60      
      "#{t3.to_i.to_s}s"
    elsif t3 > 60 and t3 <= 3600
      t = t3/60.to_i
      "#{t.to_i.to_s}m"
    elsif t3 > 3600 and t3 <= 86400
      t = t3/(60*60).to_i
      "#{t.to_i.to_s}h"
    else
      if t1.year == t2.year
        "#{t1.strftime('%-d %b')}"
      else
        "#{t1.strftime('%-d %b %Y')}"
      end
    end
  end
end
