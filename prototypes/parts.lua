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
}
)