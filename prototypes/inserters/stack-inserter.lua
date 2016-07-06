data:extend(
{
  {
    type = "item",
    name = "burner-stack-inserter",
    icon = "__burn-the-world__/graphics/icons/burner-stack-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "burner-inserter",
    order = "f[stack-inserter]",
    place_result = "burner-stack-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "burner-stack-inserter",
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 15},
      {"copper-gear-wheel", 5},
      {"clockwork-parts", 10},
      {"advanced-circuit", 1},--TODO
      {"burner-fast-inserter", 1}
    },
    result = "burner-stack-inserter",
    requester_paste_multiplier = 4
  },

  {
    type = "inserter",
    name = "burner-stack-inserter",
    icon = "__burn-the-world__/graphics/icons/burner-stack-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "burner-stack-inserter"
    },
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = 200000,
    energy_per_rotation = 200000,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.3
        }
      }
    },
    extension_speed = 0.07,
    rotation_speed = 0.04,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-fast-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-fast-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/burner-inserter/burner-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0}
      }
    },
    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },
}
)
