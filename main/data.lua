-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
return {
	player = {
		current_level = 1,
		lives = 3,
		total_lives = 3,
		score = 0,
		highscore = 0,
		meat_remaining = 10,
	},
	config = {
		sfx_on = true,
		bg_on = true,
		volume = 1.0
	}
}