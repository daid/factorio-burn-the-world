data:extend(
{
  {
    type = "item",
    name = "burner-rocket-silo",
    icon = "__base__/graphics/icons/rocket-silo.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "e[rocket-silo]",
    place_result = "burner-rocket-silo",
    stack_size = 1
  },

  {
    type = "recipe",
    name = "burner-rocket-silo",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1000},
      {"concrete", 1000},
      {"pipe", 100},
      {"processing-unit", 200},
      {"electric-engine-unit", 200}
    },
    energy_required = 30,
    result = "burner-rocket-silo",
    requester_paste_multiplier = 1
  },

  {
    type = "rocket-silo",
    name = "burner-rocket-silo",
    icon = "__base__/graphics/icons/rocket-silo.png",
    flags = {"placeable-player", "player-creation"},
    crafting_categories = {"rocket-building"},
    ingredient_count = 3,
    rocket_parts_required = 100,
    crafting_speed = 1,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 4.3}
    },
    fixed_recipe = "rocket-part",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    minable = {hardness = 0.2, mining_time = 5, result = "burner-rocket-silo"},
    max_health = 5000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.2, -4.7}, {4.2, 4.7}},
    selection_box = {{-4.5, -5}, {4.5, 5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      usage_priority = "primary-input",
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.3
        }
      }
    },
    energy_usage = "250kW", --energy usage used when crafting the rocket
    idle_energy_usage = "10KW",
    lamp_energy_usage = "10KW",
    active_energy_usage = "3990KW",
    rocket_entity = "rocket-silo-rocket",

    times_to_blink = 3,
    light_blinking_speed = 1 / (3 * 60),
    door_opening_speed = 1 / (4.25 * 60),

    base_light =
    {
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.25, 1.25},
        size = 1,
        intensity = 1,
        rotation_shift = 0.6
      },
      {
        type = "oriented",
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.25, 1},
        size = 1,
        intensity = 1,
        rotation_shift = 0.5
      }
    },
    base_engine_light =
    {
      intensity = 1,
      size = 25,
      shift = {0, 1.5}
    },

    shadow_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-silo-shadow.png",
      priority = "medium",
      width = 447,
      height = 351,
      draw_as_shadow = true,
      shift = {1.5, 0.5}
    },
    satellite_shadow_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/00-shadow/00-satellite-shadow.png",
      priority = "medium",
      width = 44,
      height = 22,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      draw_as_shadow = true,
      shift = {7.875, -2.1875}
    },

    hole_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    hole_light_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/01-hole/01-hole-light.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },

    rocket_shadow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-shadow-over-rocket.png",
      width = 224,
      height = 128,
      shift = {0, 2}
    },
    rocket_glow_overlay_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/03-12-rocket-over/03-rocket-over-glow.png",
      blend_mode = "additive",
      width = 224,
      height = 128,
      shift = {0, 2}
    },


    door_back_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/04-door-back.png",
      width = 192,
      height = 108,
      shift = {0, 1.53125}
    },
    door_back_open_offset = {1.75, -1.75},
    door_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/04-05-doors/05-door-front.png",
      width = 192,
      height = 112,
      shift = {0, 2.0625}
    },
    door_front_open_offset = {-1.75, 1.75},

    base_day_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-day.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },
    base_night_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/06-silo-base/06-silo-base-night.png",
      width = 352,
      height = 384,
      shift = {0, 0}
    },


    red_lights_back_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.65625, 1.90625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 0.9375}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 0.28125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 0}
        }
      }
    },

    red_lights_front_sprites =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {2.3125, 2.8125}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {0, 3.75}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-1.34375, 3.40625}
        },
        {
          filename = "__base__/graphics/entity/rocket-silo/07-red-lights-back/red-light.png",
          width = 32,
          height = 32,
          shift = {-2.3125, 2.8125}
        }
      }
    },
    satellite_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/satellite.png",
      priority = "medium",
      width = 27,
      height = 28,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.25,
      shift = {3.3125, -4.82813}
    },

    arm_01_back_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-01-back.png",
      priority = "medium",
      width = 54,
      height = 50,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, -0.875}
    },

    arm_02_right_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/08-arms-back-satellite-animation/arm-02-right.png",
      priority = "medium",
      width = 81,
      height = 43,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {2.71875, 0.96875}
    },

    arm_03_front_animation =
    {
      filename = "__base__/graphics/entity/rocket-silo/13-arm-front-red-lights-front/arm-03-front.png",
      priority = "medium",
      width = 54,
      height = 70,
      frame_count = 12,
      line_length = 4,
      animation_speed = 0.2,
      shift = {-1.34375, 2.4375}
    },

    base_front_sprite =
    {
      filename = "__base__/graphics/entity/rocket-silo/14-silo-front/14-silo-front.png",
      width = 352,
      height = 96,
      shift = {0, 3.5}
    },
    silo_fade_out_start_distance = 8,
    silo_fade_out_end_distance = 15,

    alarm_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-alarm.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_on_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-on.ogg",
            volume = 1.5
          }
        }
      }
    },
    clamps_off_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-clamps-off.ogg",
            volume = 1.5
          }
        }
      }
    },
    doors_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-doors.ogg",
            volume = 1.5
          }
        }
      }
    },
    raise_rocket_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/silo-raise-rocket.ogg",
            volume = 1.5
          }
        }
      }
    }
  },
}
)
