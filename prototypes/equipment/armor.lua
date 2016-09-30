data:extend(
{
  {
    type = "equipment-grid",
    name = "burner-small-equipment-grid",
    width = 8,
    height = 3,
    equipment_categories = {"burner-armor"}
  },
  {
    type = "equipment-grid",
    name = "burner-medium-equipment-grid",
    width = 9,
    height = 5,
    equipment_categories = {"burner-armor"}
  },
  {
    type = "equipment-grid",
    name = "burner-large-equipment-grid",
    width = 10,
    height = 9,
    equipment_categories = {"burner-armor"}
  },
  
  {
    type = "armor",
    name = "burner-armor-mk1",
    icon = "__base__/graphics/icons/modular-armor.png",
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 6,
        percent = 30
      },
      {
        type = "acid",
        decrease = 5,
        percent = 30
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
      {
        type = "fire",
        decrease = 0,
        percent = 60
      }
    },
    durability = 10000,
    subgroup = "armor",
    order = "f",
    stack_size = 1,
    equipment_grid = "burner-small-equipment-grid",
    inventory_size_bonus = 10
  },
  {
    type = "armor",
    name = "burner-armor-mk2",
    icon = "__base__/graphics/icons/power-armor.png",
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 30
      },
      {
        type = "acid",
        decrease = 7,
        percent = 30
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "fire",
        decrease = 0,
        percent = 75
      }
    },
    durability = 15000,
    subgroup = "armor",
    order = "g",
    stack_size = 1,
    equipment_grid = "burner-medium-equipment-grid",
    inventory_size_bonus = 20
  },
  {
    type = "armor",
    name = "burner-armor-mk3",
    icon = "__base__/graphics/icons/power-armor-mk2.png",
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 40
      },
      {
        type = "acid",
        decrease = 10,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 50
      },
      {
        type = "fire",
        decrease = 0,
        percent = 80
      }
    },
    durability = 20000,
    subgroup = "armor",
    order = "h",
    stack_size = 1,
    equipment_grid = "burner-large-equipment-grid",
    inventory_size_bonus = 30
  }
}
)
