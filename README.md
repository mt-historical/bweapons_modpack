# Bweapons modpack
Bweapons aims at providing a full progression of weapons (primitive, firearms, hitech weapons, magic weapons),
and an API for easy registration of your own weapons.  
Weapons are split into packages so you can disable what you don't like (for example if you're running a medieval server and don't want to see technic stuff).

## API Features

- Projectile and hitscan based weapons
- Integration with technic
- Integration with Wuzzy's mana mod
- Custom user-defined functions like on_hit(), on_timeout(), on_fire()
- Wide customization of visuals, particle effects and sounds
- Different fire modes (multiple projectiles/traces, salvos, node and entity penetration)
- Wide customization of projectile or hitscan behavior, visuals and effects
- Easy to use registration function with just one definition parameter table
- Different wear modes (unbreakable, with custom wear, or powered by technic EUs)
- Repair options (repair/recharge weapons with custom items, enable toolrepair recipe)
- Return item options (drop items on hit, return items to the inventory, etc)
- Interoperability of every option, with big room for experimentation
- Many other small things

## Making your own weapons
To define weapons in your own mod you need to call `bweapons.register_weapon(def)`
where `def` is a definition table. To see a complete list of possible definition options (with comments)
refer to **[this document](bweapons_api/documentation.txt)**.

Although not required, but bweapons_api provides a second function, for
convenient ammo registration `bweapons.register_ammo(def)`. List of available definition
options can be found in the documentation mentioned above.

Also, you can see already defined weapon packs for reference, however, keep in mind, they don't contain all possible options.

## Limitations
Collision detection for projectiles is not perfect. It's much better than it was before (prior to minetest 5.0.0 it was very hacky, now it uses raycasting), however keep in mind to not make projectiles too fast, otherwise they might go through objects and nodes.  
If you still want to make projectiles fast, there's a settingtypes.txt option that you can put in your minetest.conf, to increase length of the raycast ray that's used for collision detection in projectiles:
```
bweapons_projectile_raycast_distance = 0.5
```

## Requirements
**Minetest 5.0.0+**

Mods:

- default  
- [technic](https://github.com/minetest-mods/technic)  (optional, but strongly recommended)  
- [magic_materials](https://github.com/ClockGen/magic_materials) (optional, but strongly recommended)  

## Recommended mods
- [craftguide](https://github.com/minetest-mods/craftguide), to see available crafting recipes for new items

# Detailed info on mods in the modpack
default and tnt are default mods in minetest_game, so if you see then as requirement, you don't actually need to download them from somewhere (they're already in minetest, but may be disabled).  
basic_materials is a new dependency for technic, providing shared resources. If you have latest version of technic installed and running, then you also have basic_materials installed.

### bweapons_api

API, implementing all of bweapons functionality and required by actual weapon packs

**Requires** : default, technic (optional)

### bweapons_firearms_pack

Pack of weapons, consisting of:

- Pump-action shotgun
- Double-barreled shotgun
- Pistol
- Rifle
- Grenade launcher

**Requires** : default, tnt, basic_materials, technic

### bweapons_bows_pack

Pack of weapons, consisting of:

- Wooden bow
- Crossbow

**Requires** : default

### bweapons_hitech_pack
Pack of weapons, consisting of:

- Particle Blaster
- Laser Gun
- Plasma Gun
- Rail Gun
- Rocket Launcher

**Requires** : default, tnt, basic_materials, technic

### bweapons_magic_pack
Pack of weapons, consisting of:

- Tome Of Fireball
- Tome Of Ice Shard
- Tome Of Electrosphere
- Staff Of Light
- Staff Of Magic
- Staff Of Void

**requires**: default, magic_materials

### bweapons_utility_pack
Pack of utilities, consisting of:

- Torch bow

**Requires** : default

## Settingtypes
Modpack provides some settings, accessible via "Settings->All Settings->Mods->bweapons_api  
You can also put these settings directly to your minetest.conf

```
bweapons_combine_velocity = false
Combines current player velocity with projectile velocity. Disabled by default since it modifies
projectile speed and can potentionally decrease collision detection effectivenes (if it's too fast).

bweapons_damage_multiplier = 1
Global weapon damage multiplier.

bweapons_projectile_raycast_distance = 0.5
Length of a projectile raycast, performed on each server step, used for collision detection.
Bigger values means better detection, but also the projectile would stop further from the
actual target.
```

# Global bweapons damage multiplier
bweapons_damage_multiplier (Bweapons damage multiplier) float 1

# Distance from projectile to which raycast is performed each server step
bweapons_projectile_raycast_distance (Projectile raycast distance) float 0.5 0 5


## License
All code is GPLv3 [link to the license](https://www.gnu.org/licenses/gpl-3.0.en.html)  
All resources not covered in the "credits" section are licensed under CC BY 4.0 [link to the license](https://creativecommons.org/licenses/by/4.0/legalcode)  

## Credits
Sounds from following users of freesound.org were mixed, cut, edited and used to produce sounds in this modpack:

- firestorm185 - energy hum sound
- qubodup - explosion
- kastenfrosch - cannonball
- qubodup - cannon shot
- panxozerok - instant chill
- selector - rocket launch
- florianreichelt - huge explosion
- wcoltd - laser4
- adrimb96 - fairy sound
- mattiagiovanetti - laser gun shots iii
- tjcason - shortlasersound
- nettimatto - mini crossbow foley
- qubodup - launching shooting propelled grenade
- saturdaysoundguy - longbow release 1
- kinoton - whoosh 1
- drmaysta - cartoon arrow hit
- arcandio - razorback archery
- lensflare8642 - shotgun sounds
- nioczkus - 1911 reload
- lemudcrab - grenade launcher
- nioczkus - browning hi power
- nioczkus - darkscape 1911 a1
- qubodup - fire-spell
- samararaine - bonfire being lit
- midimagician - fire burning loop
- qubodup - tree burns down
- qubodup - fire magic spell sound effect
- spookymodem - magicsmite
- lamamakesmusic - step ice break 01
- steffcaffrey - chimes
- spookymodem - hitting wall
- adrimb86 - fairy sound
- terminallynerdy - timestop
- slugzilla - phoenixscreech1
- bajko - sfx thunder blast
- joelaudio - electric zap 001
- dave-welsh - thunder-clap-owb-ky-441x16
- quaker540 - supernatural-explosion
- northern87 - barbecue-fire-northern87
- cyberkineticfilms - strange-teleport-sound
- slugzilla - phoenixscreech1
- zenithinfinitivestudios - fantasy-ui-button-1
- 221beimesche - glass-shattering-and-falling
- sclolex - tunneldrone

All sounds listed above were licensed as CC0 (released to public domain). Produced sounds are licensed under CC BY 4.0 [link to the license](https://creativecommons.org/licenses/by/4.0/legalcode)