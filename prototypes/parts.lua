data:extend(
{
  {
    type = "item",
    name = "copper-gear-wheel",
    icon = "__burn-the-world__/graphics/icons/copper-gear-wheel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-intermediate-product",
    order = "a",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "copper-gear-wheel",
    ingredients = {{"copper-plate", 2}},
    result = "copper-gear-wheel",
    requester_paste_multiplier = 10,
    enabled = true
  },

  {
    type = "item",
    name = "clockwork-parts",
    icon = "__burn-the-world__/graphics/icons/clockwork-parts.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-intermediate-product",
    order = "b",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "clockwork-parts",
    ingredients = {
      {"iron-plate", 1},
      {"iron-stick", 1},
      {"copper-gear-wheel", 1},
    },
    result = "clockwork-parts",
    requester_paste_multiplier = 10,
    enabled = true
  },
  
  {
    type = "item",
    name = "miniature-steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-intermediate-product",
    order = "c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "miniature-steam-engine",
    category = "crafting-with-fluid",
    ingredients = {
      {type="item", name="iron-plate", amount=5},
      {type="item", name="clockwork-parts", amount=5},
      {type="item", name="pipe", amount=2},
      {type="fluid", name="water", amount=1},
    },
    result = "miniature-steam-engine",
    requester_paste_multiplier = 10,
    enabled = false
  },

  {
    type = "fluid",
    name = "high-quality-lubericant",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.75, g=0.65, b=0.1},
    flow_color = {r=0.7, g=1, b=0.1},
    max_temperature = 100,
    icon = "__burn-the-world__/graphics/icons/quality-lubricant.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "e-a"
  },
  {
    type = "recipe",
    name = "high-quality-lubericant",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="item", name="plastic-bar", amount=1},
      {type="item", name="iron-plate", amount=1},
      {type="fluid", name="lubricant", amount=10}
    },
    results=
    {
      {type="fluid", name="high-quality-lubericant", amount=10}
    },
    subgroup = "fluid-recipes"
  },

  {
    type = "item",
    name = "spring-loaded-accumulator",
    icon = "__burn-the-world__/graphics/icons/spring-loaded-accumulator.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-intermediate-product",
    order = "c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "spring-loaded-accumulator",
    category = "chemistry",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="high-quality-lubericant", amount=0.5},
      {type="item", name="iron-plate", amount=1},
      {type="item", name="copper-plate", amount=1}
    },
    result = "spring-loaded-accumulator",
    enabled = false
  },
  
  {
    type = "item",
    name = "light-machinery",
    icon = "__burn-the-world__/graphics/icons/light-machinery.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-intermediate-product",
    order = "c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "light-machinery",
    category = "crafting-with-fluid",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="high-quality-lubericant", amount=0.5},
      {type="item", name="clockwork-parts", amount=1},
      {type="item", name="miniature-steam-engine", amount=1},
      {type="item", name="spring-loaded-accumulator", amount=1}
    },
    result = "light-machinery",
    enabled = false
  },

  {
    type = "item",
    name = "stirling-engine-unit",
    icon = "__base__/graphics/icons/engine-unit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "g[engine-unit]",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "stirling-engine-unit",
    energy_required = 20,
    category = "advanced-crafting",
    ingredients =
    {
      {"steel-plate", 1},
      {"iron-gear-wheel", 2},
      {"miniature-steam-engine", 1},
      {"copper-gear-wheel", 2},
    },
    result = "stirling-engine-unit",
    enabled = false
  },
}
)   