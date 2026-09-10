/obj/item/toy/plush/moth
	name = "moth plushie"
	desc = "A plushie depicting an adorable mothperson. It's a huggable bug!"
	icon = 'modular/moff/icon/plushes.dmi'
	icon_state = "moffplush"
	var/suicide_count = 0

/obj/item/toy/plush/moth/attack_self(mob/living/user)
	if(!COOLDOWN_FINISHED(src, last_hug_time))
		return

	user.visible_message(
		SPAN_WARNING("[capitalize(user.declent_ru(NOMINATIVE))] stares deeply into the eyes of [src]...")
	)
	playsound(src, 'modular/moff/sound/moth_scream_moth.ogg', 50, TRUE)
	if(!do_after(user, 2 SECONDS, INTERRUPT_ALL, BUSY_ICON_HOSTILE))
		user.visible_message(
			SPAN_NOTICE("[capitalize(user.declent_ru(NOMINATIVE))] decided life was worth living.")
		)
		return

	suicide_count++

	if(suicide_count < 3)
		desc = "A plushie depicting an unsettling mothperson. After killing [suicide_count] [suicide_count == 1 ? "person" : "people"] it's not looking so huggable now..."
	else
		desc = "A plushie depicting a creepy mothperson. It's killed [suicide_count] people! I don't think I want to hug it any more!"

	user.visible_message(
		SPAN_HIGHDANGER("[capitalize(user.declent_ru(NOMINATIVE))] hugs [src] tightly as it begins consuming [user.p_them()]!")
	)

	var/datum/cause_data/cause_data = create_cause_data("suicide by [initial(name)]", user)
	user.last_damage_data = cause_data
	playsound(src, 'modular/moff/sound/wail.ogg', 50, TRUE)
	user.death(cause_data)

	COOLDOWN_START(src, last_hug_time, 3.5 SECONDS)
