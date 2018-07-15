module ComputersHelper

    def computer_author(computer)
        user_signed_in? && current_user.id == computer.user.id
    end
        
end
