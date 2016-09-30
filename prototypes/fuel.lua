data.raw["item"]["coal"].order = "b[coal]-b"

data:extend(
{
  {
    type = "recipe-category",
    name = "burner-fuel-processing"
  },
  {
    type = "item",
    name = "dirty-coal",
    icon = "__burn-the-world__/graphics/icons/dirty-coal.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "4MJ",
    subgroup = "raw-material",
    order = "b[coal]-a",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "clean-coal",
    category = "burner-fuel-processing",
    subgroup = "raw-material",
    icon = "__base__/graphics/icons/coal.png",
    energy_required = 0.2,
    ingredients = {
      {type="item", name="dirty-coal", amount=1},
      {type="fluid", name="water", amount=0.2},
    },
    results = {
        {type = "item", name = "coal", amount = 1},
        {type = "item", name = "iron-ore", amount = 1, probability = 0.03},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.03},
    }
  },
  
  {
    type = "item",
    name = "powdered-coal",
    icon = "__burn-the-world__/graphics/icons/powdered-coal.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "12MJ",
    subgroup = "raw-material",
    order = "b[coal]-c",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "powdered-coal",
    category = "burner-fuel-processing",
    subgroup = "raw-material",
    energy_required = 0.2,
    ingredients = {
      {type="item", name="coal", amount=1},
    },
    results = {
        {type = "item", name = "powdered-coal", amount = 1},
    }
  },
}
)
