module ApplicationHelper

  def indefinite_articlerize(params_word)
      %w(a e i o u).include?(params_word[0].downcase) ? "d'#{params_word}" : "de #{params_word}"
  end

  def humanize_boolean(boolean)
      I18n.t((!!boolean).to_s)
    end

  def pluralize_with_0(string, count)
    count <= 1 ? string :string.pluralize
  end

end
