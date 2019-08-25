bweapons.register_weapon({
    name = "bweapons_bows_pack:wooden_bow",
    description = "Wooden Bow",
    texture = "bweapons_bows_pack_wooden_bow.png",
    has_durability = true,
    uses = 128,
    ammo_type = "bweapons_bows_pack:arrow",
    tool_repair = true,
    damage = 5,
    spread = 0.05,
    cooldown = 2,
    hit_flare = "tnt_smoke.png",
    hit_flare_size = 2,
    hit_flare_glow = false,
    hit_particle = "tnt_smoke.png",
    hit_particle_glow = false,
    hit_particle_amount = 32,
    hit_particle_size = 2,
    hit_particle_velocity = 3,
    hit_particle_gravity = -10,
    fire_sound = "bweapons_bows_pack_longbow_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_bows_pack_longbow_reload",
    hit_sound = "bweapons_bows_pack_arrow_hit",
    hit_sound_gain = 0.5,
    projectile_speed = 30,
    projectile_gravity = -6,
    projectile_dampening = 0,
    projectile_timeout = 35,
    projectile_texture = "bweapons_bows_pack_arrow_entity.png",
    projectile_glow = false,
    projectile_visual_size = 0.4,
    drop = "bweapons_bows_pack:arrow",
    drop_chance = 0.5,
    recipe={
        {
            {'', 'group:wood', 'farming:string'},
            {'group:wood', '', 'farming:string'},
            {'', 'group:wood', 'farming:string'}
        },
    },
})

bweapons.register_weapon({
    name = "bweapons_bows_pack:crossbow",
    description = "Crossbow",
    texture = "bweapons_bows_pack_crossbow.png",
    has_durability = true,
    uses = 256,
    ammo_type = "bweapons_bows_pack:bolt",
    tool_repair = true,
    damage = 8,
    spread = 0.02,
    cooldown = 2.5,
    hit_flare = "tnt_smoke.png",
    hit_flare_size = 2,
    hit_flare_glow = false,
    hit_particle = "tnt_smoke.png",
    hit_particle_glow = false,
    hit_particle_amount = 32,
    hit_particle_size = 2,
    hit_particle_velocity = 3,
    hit_particle_gravity = -10,
    fire_sound = "bweapons_bows_pack_crossbow_fire",
    fire_sound_gain = 1,
    reload_sound = "bweapons_bows_pack_crossbow_reload",
    hit_sound = "bweapons_bows_pack_bolt_hit",
    hit_sound_gain = 0.5,
    projectile_speed = 30,
    projectile_gravity = -6,
    projectile_dampening = 0,
    projectile_timeout = 35,
    projectile_texture = "bweapons_bows_pack_bolt_entity.png",
    projectile_glow = false,
    projectile_visual_size = 0.4,
    drop = "bweapons_bows_pack:bolt",
    drop_chance = 0.85,
    recipe={
        {
            {'default:steel_ingot', 'group:wood', 'farming:string'},
            {'group:wood', 'group:wood', ''},
            {'farming:string', '', 'default:steel_ingot'}
        },
    },
})
