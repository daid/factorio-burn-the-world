data:extend(
{
  {
    type = "item",
    name = "minature-spring-loaded-accumulator-equipment",
    icon = "__burn-the-world__/graphics/icons/spring-loaded-accumulator.png",
    placed_as_equipment_result = "minature-spring-loaded-accumulator-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-equipment",
    order = "c[battery]-a[battery-equipment]",
    stack_size = 50,
    default_request_amount = 10
  },
  {
    type = "battery-equipment",
    name = "minature-spring-loaded-accumulator-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/battery-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "200MW",
      output_flow_limit = "200MW",
      usage_priority = "terciary"
    },
    categories = {"burner-armor"}
  },

  {
    type = "item",
    name = "burner-fuel-equipment",
    icon = "__burn-the-world__/graphics/icons/fuel-equipment.png",
    placed_as_equipment_result = "burner-fuel-equipment",
    fuel_value = "1MJ",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-equipment",
    order = "a[energy-source]-a[solar-panel]",
    stack_size = 100
  },
  {
    type = "solar-panel-equipment",
    name = "burner-fuel-equipment",
    sprite =
    {
      filename = "__burn-the-world__/graphics/icons/fuel-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "0kW",
    categories = {"burner-armor"}
  },

  {
    type = "item",
    name = "portable-steam-engine-equipment",
    icon = "__base__/graphics/icons/steam-engine.png",
    placed_as_equipment_result = "portable-steam-engine-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "burner-equipment",
    order = "a[energy-source]-a[solar-panel]",
    stack_size = 20
  },
  {
    type = "battery-equipment",
    name = "portable-steam-engine-equipment",
    sprite =
    {
      filename = "__base__/graphics/icons/steam-engine.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1MJ",
      input_flow_limit = "200MW",
      output_flow_limit = "200MW",
      usage_priority = "terciary"
    },
    categories = {"burner-armor"}
  },
}
)