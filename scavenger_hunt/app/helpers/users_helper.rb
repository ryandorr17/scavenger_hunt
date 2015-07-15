module UsersHelper

  def current_round(user)
    if Response.all.where(:user_id => user, :correct => true).any?

      correct_rounds = Response.all.where(:user_id => user, :correct => true)
      correct_rounds.maximum("round_number") + 1
    else
      0
    end
  end





end
