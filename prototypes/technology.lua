
table.insert(data.raw["technology"]["automation"].effects, {type = "unlock-recipe", recipe = "burner-assembling-machine-1"})
table.insert(data.raw["technology"]["automation"].effects, {type = "unlock-recipe", recipe = "burner-long-handed-inserter"})

table.insert(data.raw["technology"]["logistics"].effects, {type = "unlock-recipe", recipe = "burner-fast-inserter"})
table.insert(data.raw["technology"]["logistics"].effects, {type = "unlock-recipe", recipe = "burner-splitter"})

table.insert(data.raw["technology"]["logistics-2"].effects, {type = "unlock-recipe", recipe = "burner-fast-splitter"})

table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-pumpjack"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-oil-refinery"})
table.insert(data.raw["technology"]["oil-processing"].effects, {type = "unlock-recipe", recipe = "burner-chemical-plant"})

table.insert(data.raw["technology"]["plastics"].effects, {type = "unlock-recipe", recipe = "high-quality-lubericant"})

table.insert(data.raw["technology"]["battery"].effects, {type = "unlock-recipe", recipe = "spring-loaded-accumulator"})
table.insert(data.raw["technology"]["battery"].effects, {type = "unlock-recipe", recipe = "burner-science-pack-3"})

tableRemoveValue(data.raw["technology"]["rocketry"].prerequisites, "electronics")
tableRemoveValue(data.raw["technology"]["concrete"].prerequisites, "advanced-material-processing-2")
table.insert(data.raw["technology"]["concrete"].prerequisites, "advanced-material-processing")

tableRemoveValue(data.raw["technology"]["research-speed-1"].prerequisites, "electronics")
table.insert(data.raw["technology"]["research-speed-1"].prerequisites, "automation")

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
    name = "burner-stack-inserter",
    icon = "__base__/graphics/technology/stack-inserter.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "burner-stack-inserter" },
      { type = "unlock-recipe", recipe = "burner-stack-filter-inserter" },
      { type = "stack-inserter-capacity-bonus", modifier = 1 }
    },
    prerequisites = {"logistics-2", "advanced-clockworking"},
    unit =
    {
      count = 150,
      ingredients = { {"science-pack-1", 1}, {"science-pack-2", 1} },
      time = 30
    },
    upgrade = true,
    order = "c-o-a",
  },
  {
    type = "technology",
    name = "more-burner-inserter",
    icon = "__base__/graphics/icons/burner-inserter.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "burner-short-long-inserter" },
      { type = "unlock-recipe", recipe = "burner-long-short-inserter" },
    },
    prerequisites = {"logistics-2", "advanced-clockworking"},
    unit =
    {
      count = 50,
      ingredients = { {"science-pack-1", 2}, {"science-pack-2", 1} },
      time = 15
    },
    order = "c-o-a",
  },
  {
    type = "technology",
    name = "more-burner-inserter2",
    icon = "__base__/graphics/icons/burner-inserter.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "burner-short-long2-inserter" },
      { type = "unlock-recipe", recipe = "burner-long2-short-inserter" },
    },
    prerequisites = {"more-burner-inserter", "battery"},
    unit =
    {
      count = 50,
      ingredients = { {"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1} },
      time = 15
    },
    order = "c-o-a",
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
    name = "burner-fuel-assembling-machine",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "burner-fuel-assembling-machine" },
    },
    prerequisites = {"clean-coal", "burner-automation-2"},
    unit =
    {
      count = 75,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}},
      time = 15
    },
    order = "a-b-b-a",
  },
  {
    type = "technology",
    name = "powdered-coal",
    icon = "__base__/graphics/icons/coal.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "powdered-coal" },
    },
    prerequisites = {"clean-coal", "battery"},
    unit =
    {
      count = 40,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
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
      ingredients = { {"science-pack-1", 1}, {"science-pack-2", 1}, },
      time = 15
    },
    effects =
    {
      { type = "unlock-recipe", recipe = "stirling-engine-unit" }
    },
    order = "b-a"
  },
  {
    type = "technology",
    name = "stirling-railway",
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "rail" },
      { type = "unlock-recipe", recipe = "stirling-locomotive" },
      { type = "unlock-recipe", recipe = "cargo-wagon" }
    },
    prerequisites = {"logistics-2", "steel-processing", "stirling-engine"},
    unit =
    {
      count = 70,
      ingredients = { {"science-pack-1", 2}, {"science-pack-2", 1}, },
      time = 20
    },
    order = "c-g-a",
  },
  {
    type = "technology",
    name = "stirling-automated-rail-transportation",
    icon = "__base__/graphics/technology/automated-rail-transportation.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "burner-train-stop" },
      { type = "unlock-recipe", recipe = "burner-rail-signal" },
      { type = "unlock-recipe", recipe = "burner-rail-chain-signal" },
    },
    prerequisites = {"stirling-railway"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "c-g-b",
  },
}
)
