require_relative '../config/environment'



puts "HELLO WORLD"

def character_name_to_instance(name)
  character_instance = Character.all.select {|character_instance| character_instance.name == name }
end
