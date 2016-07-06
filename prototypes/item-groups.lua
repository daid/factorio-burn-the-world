data:extend(
{
  {
    type = "item-subgroup",
    name = "burner-inserter",
    group = "logistics",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "burner-production-machine",
    group = "production",
    order = "e-a",
  },
  {
    type = "item-subgroup",
    name = "burner-intermediate-product",
    group = "intermediate-products",
    order = "e-a"
  },


  {
    type = "recipe",
    name = "burner-science-pack-2",
    energy_required = 6,
    ingredients =
    {
      {"burner-inserter", 1},
      {"transport-belt", 1}
    },
    result = "science-pack-2"
  },
}
)
