/datum/xeno_strain/hunchback
	name = "Сутулая собака"
	description = "Бегун, который разучился бегать, зато научился бесконечно прыгать. Может передвигаться пешком только по ксеноморфной траве."
	flavor_description = "Не бегает. Не ходит. Просто прыгает."
	icon_state_prefix = "Hunchback"
	actions_to_remove = list(
		/datum/action/xeno_action/activable/runner_skillshot,
		/datum/action/xeno_action/onclick/toggle_long_range/runner,
		/datum/action/xeno_action/activable/pounce/runner,
	)

	actions_to_add = list(
		/datum/action/xeno_action/activable/pounce/hunchback,
	)

	behavior_delegate_type = /datum/behavior_delegate/runner_hunchback


/datum/xeno_strain/hunchback/apply_strain(mob/living/carbon/xenomorph/runner/runner)
	runner.armor_modifier += XENO_ARMOR_TIER_1
	runner.health_modifier += XENO_HEALTH_TIER_1 - XENO_HEALTH_RUNNER
	runner.speed_modifier += 6.5
	runner.icon = 'modular/hunchback/icon/runner.dmi'
	runner.icon_xeno = 'modular/hunchback/icon/runner.dmi'
	runner.icon_xenonid = 'modular/hunchback/icon/runner.dmi'
	runner.recalculate_everything()

/datum/behavior_delegate/runner_hunchback
	name = "Hunchback Runner Behavior Delegate"

/datum/behavior_delegate/runner_hunchback/melee_attack_additional_effects_self()
	..()

	var/datum/action/xeno_action/onclick/xenohide/hide = get_action(
		bound_xeno,
		/datum/action/xeno_action/onclick/xenohide
	)

	if(hide)
		hide.post_attack()


/mob/living/carbon/xenomorph/runner/Move(atom/newloc, direct, glide_size_override, force_move)
	if(istype(strain, /datum/xeno_strain/hunchback))
		if(!force_move && !HAS_TRAIT(src, TRAIT_LAUNCHED))
			var/turf/T = get_turf(newloc)

			if(!T)
				return FALSE

			var/obj/effect/alien/weeds/W = locate(/obj/effect/alien/weeds) in T

			if(!W || W.hivenumber != hivenumber)
				return FALSE

	return ..()

/mob/living/carbon/xenomorph/runner/recalculate_actions()
	. = ..()

	if(istype(strain, /datum/xeno_strain/hunchback))
		pull_multiplier *= 0.85

	if(is_zoomed)
		zoom_out()

/datum/action/xeno_action/activable/pounce/hunchback
	name = "Прыжок"
	action_icon_state = "pounce"
	action_text = "прыгаем"
	macro_path = /datum/action/xeno_action/verb/verb_pounce
	action_type = XENO_ACTION_CLICK
	ability_primacy = XENO_PRIMARY_ACTION_1
	xeno_cooldown = 0
	plasma_cost = 0
	distance = 4
	knockdown = TRUE
	knockdown_duration = 1
	slash = FALSE
	slash_bonus_damage = 0
	freeze_self = TRUE
	freeze_time = 5
	can_be_shield_blocked = FALSE

/mob/living/carbon/xenomorph/runner/proc/hunchback_pounce_cooldown()
	var/datum/action/xeno_action/activable/pounce/hunchback/pounceAction = get_action(
		src,
		/datum/action/xeno_action/activable/pounce/hunchback
	)

	if(!pounceAction)
		return

	pounceAction.xeno_cooldown = 2.2 SECONDS
	pounceAction.apply_cooldown()
	pounceAction.xeno_cooldown = 0

/datum/action/xeno_action/activable/pounce/hunchback/additional_effects(mob/living/L)
	. = ..()

	var/mob/living/carbon/xenomorph/runner/xeno = owner
	if(!istype(xeno))
		return

	if(!L)
		return

	xeno.hunchback_pounce_cooldown()

/mob/living/carbon/xenomorph/runner/pounced_obj(obj/O)
	if(!istype(strain, /datum/xeno_strain/hunchback))
		return ..()

	var/datum/action/xeno_action/activable/pounce/hunchback/pounceAction = get_action(
		src,
		/datum/action/xeno_action/activable/pounce/hunchback
	)

	if(!pounceAction)
		return ..()

	if(!HAS_TRAIT(src, TRAIT_LAUNCHED))
		return ..()

	if(istype(O, /obj/structure/surface/table) || istype(O, /obj/structure/surface/rack))
		return ..()

	if(O.density)
		visible_message(
			SPAN_DANGER("[capitalize(declent_ru(NOMINATIVE))] врезается в [O]!"),
			SPAN_XENODANGER("Мы врезаемся в [O]!"),
			null,
			5
		)

		KnockDown(1)
		Stun(1)

		playsound(src, "bonk", 75, FALSE)

		hunchback_pounce_cooldown()

		REMOVE_TRAIT(src, TRAIT_LAUNCHED, LAUNCHED_TRAIT)

		return

	return ..()

/mob/living/carbon/xenomorph/runner/pounced_turf(turf/T)
	if(!istype(strain, /datum/xeno_strain/hunchback))
		return ..()

	var/datum/action/xeno_action/activable/pounce/hunchback/pounceAction = get_action(
		src,
		/datum/action/xeno_action/activable/pounce/hunchback
	)

	if(!pounceAction)
		return ..()

	if(!HAS_TRAIT(src, TRAIT_LAUNCHED))
		return ..()

	if(T.density)
		visible_message(
			SPAN_DANGER("[capitalize(declent_ru(NOMINATIVE))] врезается в стену!"),
			SPAN_XENODANGER("Мы врезаемся в стену!"),
			null,
			5
		)
		KnockDown(1)
		Stun(1)
		playsound(src, "bonk", 75, FALSE)
		hunchback_pounce_cooldown()
		REMOVE_TRAIT(src, TRAIT_LAUNCHED, LAUNCHED_TRAIT)
		return

	return ..()
