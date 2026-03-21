require("jsauvim")
require("config.lazy")

-- NEOSCROLL
neoscroll = require("neoscroll")
local keymap = {
	["<Up>"] = function() neoscroll.ctrl_u({ duration = 200 }) end;
	["<Down>"] = function() neoscroll.ctrl_d({ duration = 200 }) end;
}
local modes = {'n', 'v', 'x'}
for key, func in pairs(keymap) do
	vim.keymap.set(modes, key, func)
end


-- SMEAR_CURSOR
--[[
smear_cursor = require("smear_cursor")
smear_cursor.setup({
	cursor_color = "ff4000",
	particles_enabled = false,
	particle_max_num = 200,
	stiffness = 1,
	trailing_stiffness = 0.2,
	trailing_exponent = 1,
	damping = 0.6,
	gradient_exponent = 0.5,
})
--]]
require("smear_cursor").setup({
   cursor_color = "#B02EBF",
   particles_enabled = true,
   stiffness = 0.8,
   trailing_stiffness = 0.2,
   stiffness_insert_mode = 0.7,
   trailing_exponent = 5,
   damping = 0.85,
   damping_insert_mode = 0.95,
   distance_stop_animating = 0.5,
   gradient_exponent = 0,
   gamma = 1,
   never_draw_over_target = true, -- if you want to actually see under the cursor
   hide_target_hack = true,       -- same
   particle_spread = 1,
   particles_per_second = 500,
   particles_per_length = 50,
   particle_max_lifetime = 800,
   particle_max_initial_velocity = 20,
   particle_velocity_from_cursor = 0.5,
   particle_damping = 0.15,
   particle_gravity = -50,
   min_distance_emit_particles = 0,
})
