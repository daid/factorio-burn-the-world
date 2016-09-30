data:extend(
{
  {
    type = "recipe",
    name = "burner-science-pack-2",
    energy_required = 6,
    ingredients =
    {
      {"burner-inserter", 1},
      {"transport-belt", 1}
    },
    result = "science-pack-2",
    enabled = false
  },
  {
    type = "recipe",
    name = "burner-science-pack-3",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {"spring-loaded-accumulator", 1},
      {"light-machinery", 1},
      {"burner-filter-inserter", 1},
      {"steel-plate", 1},
    },
    result = "science-pack-3"
  },

  {
    type = "recipe",
    name = "burner-splitter",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"clockwork-parts", 4},
      {"iron-plate", 5},
      {"transport-belt", 4}
    },
    result = "splitter",
    requester_paste_multiplier = 4
  },
  {
    type = "recipe",
    name = "burner-fast-splitter",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"splitter", 1},
      {"iron-gear-wheel", 10},
      {"clockwork-parts", 8}
    },
    result = "fast-splitter",
    requester_paste_multiplier = 4
  },
  {
    type = "recipe",
    name = "burner-express-splitter",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"fast-splitter", 1},
      {"iron-gear-wheel", 10},
      {"miniature-steam-engine", 4},
      {type="fluid", name="lubricant", amount=8}
    },
    result = "express-splitter"
  },

  {
    type = "recipe",
    name = "burner-offshore-pump",
    ingredients =
    {
      {"clockwork-parts", 2},
      {"pipe", 1},
      {"iron-gear-wheel", 1}
    },
    result = "offshore-pump"
  },
}
)