-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M =  {
	default = {
		player = {
			current_level = 1,
			lives = 3,
			total_lives = 3,
			score = 0,
			highscore = 0,
			junk_remaining = 5,
		},
		config = {
			sfx_on = true,
			bg_on = true,
			volume = 1.0
		}
	}
}

function M.copy_table(obj, seen)
	if type(obj) ~= 'table' then return obj end
	if seen and seen[obj] then return seen[obj] end
	local s = seen or {}
	local res = setmetatable({}, getmetatable(obj))
	s[obj] = res
	for k, v in pairs(obj) do res[M.copy_table(k, s)] = M.copy_table(v, s) end
	return res
end

return M