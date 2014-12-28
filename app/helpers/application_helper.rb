module ApplicationHelper

  def get_title
    if Option.find_by_opt_key "site_title"
      opt_obj = Option.find_by_opt_key "site_title"
      return opt_obj.opt_val
    end
  end

end
