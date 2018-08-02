require_relative '../config/environment'

new_cli = CommandLineInterface.new

film = new_cli.gets_user_input_1
new_cli.answer_1(film)
