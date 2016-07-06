-- Modify the existing burner inserter to require clockwork parts.
-- This makes the raw material costs "on par" with a normal inserter, but with a slightly more preference for copper instead of iron.
data.raw["recipe"]["burner-inserter"].ingredients = {
  {"iron-plate", 2},
  {"clockwork-parts", 1}
}
-- Also put it in a different subgroup, so it's on the line below the normal inserters with the rest of the burner inserters.
data.raw["item"]["burner-inserter"].subgroup = "burner-inserter"
