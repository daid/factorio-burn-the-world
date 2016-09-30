--Change the default electric parts that Factorio defines into researchable recipes
data.raw["recipe"]["inserter"].enabled = false
data.raw["recipe"]["steam-engine"].enabled = false
data.raw["recipe"]["lab"].enabled = false
data.raw["recipe"]["electric-mining-drill"].enabled = false
data.raw["recipe"]["radar"].enabled = false
data.raw["recipe"]["science-pack-2"].enabled = false
data.raw["recipe"]["electronic-circuit"].enabled = false
data.raw["recipe"]["small-electric-pole"].enabled = false
data.raw["recipe"]["offshore-pump"].enabled = false

table.insert(data.raw["technology"]["electronics"].prerequisites, "basic-electronics")
if data.raw["technology"]["optics"].prerequisites == nil then data.raw["technology"]["optics"].prerequisites = {} end
table.insert(data.raw["technology"]["optics"].prerequisites, "basic-electronics")

data:extend(
{
  {
    type = "technology",
    name = "basic-electronics",
    icon = "__base__/graphics/technology/electronics.png",
    effects =
    {
      { type = "unlock-recipe", recipe = "small-electric-pole" },
      { type = "unlock-recipe", recipe = "inserter" },
      { type = "unlock-recipe", recipe = "steam-engine" },
      { type = "unlock-recipe", recipe = "lab" },
      { type = "unlock-recipe", recipe = "electric-mining-drill" },
      { type = "unlock-recipe", recipe = "radar" },
      { type = "unlock-recipe", recipe = "science-pack-2" },
      { type = "unlock-recipe", recipe = "offshore-pump" },
      { type = "unlock-recipe", recipe = "electronic-circuit" },
    },
    unit =
    {
      count = 5,
      ingredients = {{"science-pack-1", 1}},
      time = 15
    },
    order = "a",
  },
}
)
