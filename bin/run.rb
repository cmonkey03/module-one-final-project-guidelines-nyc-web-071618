require_relative '../config/environment'

# def runner
#   cli = CommandLineInterface.new
#
#   cli.greet1
#   cli.greet2
#
#   in_app = true
#
#   while in_app
#     cli.main_menu
#     main_menu_choice = cli.get_main_menu_choice
#     cli.fork_in_road(main_menu_choice)
#     next_move = cli.get_menu_or_exit
#     if next_move == 'exit'
#       in_app = false
#     end
#   end

# end

CommandLineInterface.runner
