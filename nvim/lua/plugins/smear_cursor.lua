return {
  "sphamba/smear-cursor.nvim",
  opts = {
    -- General settings
    cursor_color = "#B02EBF",
    time_interval = 5,
    stiffness = 0.8,
    trailing_stiffness = 0.2,
    stiffness_insert_mode = 0.7,
    trailing_exponent = 5,
    damping = 0.85,
    damping_insert_mode = 0.95,
    distance_stop_animating = 0.5,
    gradient_exponent = 0,
    gamma = 1,
    never_draw_over_target = true,
    hide_target_hack = true,

    -- Particle settings
    particles_enabled = true,
    particle_spread = 1,
    particles_per_second = 500,
    particles_per_length = 50,
    particle_max_lifetime = 800,
    particle_max_initial_velocity = 20,
    particle_velocity_from_cursor = 0.5,
    particle_damping = 0.15,
    particle_gravity = -50,
    min_distance_emit_particles = 0,
  },
}
