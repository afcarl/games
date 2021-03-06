data:extend{{

	type = 'unit',
	name = 'wisp-red',
	icon = '__Will-o-the-Wisps_updated__/graphics/icons/wisp-red-capsule.png',
	icon_size = 32,
	flags = {'placeable-player', 'placeable-enemy', 'placeable-off-grid', 'breaths-air', 'not-repairable'},
	subgroup='enemies',
	max_health = 30,
	alert_when_damaged = false,
	order='b-b-c',
	resistances = {{type = 'physical', decrease = 3}},
	healing_per_tick = 0.01,
	collision_box = {{0, 0}, {0, 0}},
	selection_box = {{-0.3, -0.3}, {0.3, 0.3}},
	sticker_box = {{-0.1, -0.1}, {0.1, 0.1}},
	distraction_cooldown = 300,
	vision_distance = 30,
	movement_speed = 0.09,
	distance_per_frame = 0.2,
	pollution_to_join_attack = 5000,
	dying_explosion = 'blood-explosion-small',

	working_sound = {
		sound = {
			{ filename = '__Will-o-the-Wisps_updated__/sound/wisp-2.ogg', volume = 0.5 },
			{ filename = '__Will-o-the-Wisps_updated__/sound/wisp-4.ogg', volume = 0.6 }
		},
		max_sounds_per_type = 2,
		audible_distance_modifier = 0.6,
		probability = 1 / (11 * 60) },
	dying_sound = {
		{ filename = '__Will-o-the-Wisps_updated__/sound/wisp-5.ogg', volume = 0.4 },
		{ filename = '__Will-o-the-Wisps_updated__/sound/wisp-6.ogg', volume = 0.3 }
	},

	attack_parameters = {
		type = 'beam',
		ammo_category = 'combat-robot-beam',
		cooldown = 20,
		range = 3,
		min_attack_distance = 3,
		ammo_type = {
			category = 'combat-robot-beam',
			action = {
				type = 'direct',
				action_delivery = {
					type = 'beam',
					beam = 'wisp-orange-beam',
					max_length = 5,
					duration = 200,
					source_offset = {0.0, 0.0} } } },
		animation = {
			layers = {
				{ filename = '__Will-o-the-Wisps_updated__/graphics/entity/wisps/wisp-red-attack.png',
					priority = 'high',
					width = 158,
					height = 158,
					frame_count = 2,
					direction_count = 1,
					animation_speed = 0.7,
					scale = 0.7 },
			}
		}
	},

	attack_reaction = {
		{ range = 40,
			damage_type = 'physical',
			reaction_modifier = 0.1,
			action = {
				type = 'direct',
				action_delivery = {
					type = 'instant',
					source_effects = {
						type = 'create-entity',
						entity_name = 'wisp-red',
						trigger_created_entity = 'true' },
					target_effects = {
						type = 'create-entity',
						entity_name = 'wisp-flash-attack' } } } },
	},

	run_animation = {
		layers = {
			{ filename = '__Will-o-the-Wisps_updated__/graphics/entity/wisps/wisp-red.png',
				priority = 'high',
				width = 158,
				height = 158,
				frame_count = 2,
				direction_count = 1,
				animation_speed = 0.7,
				scale = 0.4 },
		}
	},

}}
