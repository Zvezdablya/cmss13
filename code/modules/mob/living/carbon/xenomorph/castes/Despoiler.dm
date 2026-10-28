/datum/action/xeno_action/onclick/oozing_wounds/proc/spawn_acid(mob/living/carbon/xenomorph/xeno, turf/turf, empowered)
	if(empowered)
		new /obj/effect/xenomorph/spray/despoiler/empowered(turf, create_cause_data(initial(xeno.caste_type), xeno), xeno.hivenumber)
	else
		new /obj/effect/xenomorph/spray/despoiler(turf, create_cause_data(initial(xeno.caste_type), xeno), xeno.hivenumber)

	if(prob(20))
		new /obj/effect/lingering_acid(turf, xeno.hivenumber)
