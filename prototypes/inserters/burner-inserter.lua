-- Modify the existing burner inserter to require clockwork parts.
-- This makes the raw material costs "on par" with a normal inserter, but with a slightly more preference for copper instead of iron.
data.raw["recipe"]["burner-inserter"].ingredients = {
  {"iron-plate", 2},
  {"clockwork-parts", 1}
}
-- Also put it in a different subgroup, so it's on the line below the normal inserters with the rest of the burner inserters.
data.raw["item"]["burner-inserter"].subgroup = "burner-inserter"

-- Set the speeds the same as the normal inserter. A burner is normally slower.
data.raw["inserter"]["burner-inserter"].extension_speed = 0.03
data.raw["inserter"]["burner-inserter"].rotation_speed = 0.014
data.raw["inserter"]["burner-inserter"].energy_per_movement = 50000
data.raw["inserter"]["burner-inserter"].energy_per_rotation = 50000
