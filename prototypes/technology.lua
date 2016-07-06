
table.insert(data.raw["technology"]["automation"].effects, {type = "unlock-recipe", recipe = "burner-assembling-machine-1"})
table.insert(data.raw["technology"]["automation"].effects, {type = "unlock-recipe", recipe = "burner-long-handed-inserter"})

table.insert(data.raw["technology"]["logistics"].effects, {type = "unlock-recipe", recipe = "burner-fast-inserter"})

table.insert(data.raw["technology"]["logistics-2"].effects, {type = "unlock-recipe", recipe = "burner-stack-inserter"})
table.insert(data.raw["technology"]["logistics-2"].effects, {type = "unlock-recipe", recipe = "burner-stack-filter-inserter"})

table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-pumpjack"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-oil-refinery"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-chemical-plant"})

data:extend(
{
  {
    type = "technology",
    name = "clockworking",
    icon = "__burn-the-world__/graphics/icons/clockwork-parts.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "burner-filter-inserter"
      }
    },
    prerequisites = {"automation"},
    unit =
    {
      count = 30,
      ingredients = {{"science-pack-1", 1}},
      time = 15
    },
    order = "a-d-a-a",
  },
  {
    type = "technology",
    name = "burner-automation-2",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "burner-assembling-machine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "burner-mining-drill-2"
      },
      {
        type = "unlock-recipe",
        recipe = "miniature-steam-engine"
      },
    },
    prerequisites = {"clockworking"},
    unit =
    {
      count = 40,
      ingredients = {{"science-pack-1", 2}},
      time = 15
    },
    order = "a-b-b-a",
  },
}
)
