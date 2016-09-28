
table.insert(data.raw["technology"]["automation"].effects, {type = "unlock-recipe", recipe = "burner-assembling-machine-1"})
table.insert(data.raw["technology"]["automation"].effects, {type = "unlock-recipe", recipe = "burner-long-handed-inserter"})

table.insert(data.raw["technology"]["logistics"].effects, {type = "unlock-recipe", recipe = "burner-fast-inserter"})
table.insert(data.raw["technology"]["logistics"].effects, {type = "unlock-recipe", recipe = "burner-splitter"})

table.insert(data.raw["technology"]["logistics-2"].effects, {type = "unlock-recipe", recipe = "burner-stack-inserter"})
table.insert(data.raw["technology"]["logistics-2"].effects, {type = "unlock-recipe", recipe = "burner-stack-filter-inserter"})

table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-pumpjack"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-oil-refinery"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-chemical-plant"})

table.insert(data.raw["technology"]["plastics"].effects, {type = "unlock-recipe", recipe = "high-quality-lubericant"})

table.insert(data.raw["technology"]["battery"].effects, {type = "unlock-recipe", recipe = "spring-loaded-accumulator"})
table.insert(data.raw["technology"]["battery"].effects, {type = "unlock-recipe", recipe = "burner-science-pack-3"})

data:extend(
{
  {
    type = "technology",
    name = "clockworking",
    icon = "__burn-the-world__/graphics/icons/clockwork-parts.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "burner-filter-inserter" },
      { type = "unlock-recipe", recipe = "burner-science-pack-2" },
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
      { type = "unlock-recipe", recipe = "burner-assembling-machine-2" },
      { type = "unlock-recipe", recipe = "burner-mining-drill-2" },
      { type = "unlock-recipe", recipe = "miniature-steam-engine" },
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
  {
    type = "technology",
    name = "advanced-clockworking",
    icon = "__burn-the-world__/graphics/icons/clockwork-parts.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "light-machinery" },
    },
    prerequisites = {"clockworking", "plastics"},
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "a-d-a-a",
  },
  {
    type = "technology",
    name = "advanced-clockworking",
    icon = "__burn-the-world__/graphics/icons/clockwork-parts.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "light-machinery" },
    },
    prerequisites = {"clockworking", "plastics"},
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "a-d-a-a",
  },
  {
    type = "technology",
    name = "clean-coal",
    icon = "__base__/graphics/icons/coal.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "clean-coal" },
    },
    prerequisites = {"burner-automation-2"},
    unit =
    {
      count = 40,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "a-b-b-a",
  },
  {
    type = "technology",
    name = "stirling-engine",
    icon = "__base__/graphics/technology/engine.png",
    prerequisites = {"steel-processing", "burner-automation-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "stirling-engine-unit"
      }
    },
    order = "b-a"
  },
  {
    type = "technology",
    name = "steam-railway",
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rail"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon"
      }
    },
    prerequisites = {"logistics-2", "steel-processing", "stirling-engine"},
    unit =
    {
      count = 70,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "c-g-a",
  },
}
)
