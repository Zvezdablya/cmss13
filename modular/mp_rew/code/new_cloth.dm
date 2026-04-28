/obj/item/clothing/under/marine/mp/provost/mp
	name = "\improper USCM military police utility uniform"
	desc = "The standard-issue utility uniform of most Military Police on USCM military stations, bases and spacecrafts. Officers wearing this uniform are usually part of the USCM provost office."
	icon = 'modular/mp_rew/icons/MPic.dmi'
	icon_state = "provost_mp"
	item_state = "provost_mp"
	specialty = "pilot officer"
	worn_state = "provost_mp"
	item_state_slots = list(
		w_uniform = "provost_mp",
	)
	item_icons = list(
		WEAR_BODY = 'modular/mp_rew/icons/MP.dmi',
	)
	suit_restricted = list(
		/obj/item/clothing/suit/storage/marine/MP,
		/obj/item/clothing/suit/armor/riot/marine,
		/obj/item/clothing/suit/storage/jacket/marine/provost,
		/obj/item/clothing/suit/storage/marine/light/vest,
		/obj/item/clothing/suit/storage/webbing,
		/obj/item/clothing/suit/storage/jacket/marine/service/,
	)

/obj/item/clothing/under/marine/mp/provost/mw
	name = "\improper USCM Military Warden utility uniform"
	desc = "The standard-issue utility uniform of most Military Wardens on USCM military stations, bases and spacecrafts. Officers wearing this uniform are usually part of the USCM provost office."
	icon = 'modular/mp_rew/icons/MPic.dmi'
	icon_state = "provost_mw"
	item_state = "provost_mw"
	worn_state = "provost_mw"
	item_state_slots = list(
		w_uniform = "provost_mw",
	)
	item_icons = list(
		WEAR_BODY = 'modular/mp_rew/icons/MP.dmi',
	)
	suit_restricted = list(
		/obj/item/clothing/suit/storage/marine/MP,
		/obj/item/clothing/suit/armor/riot/marine,
		/obj/item/clothing/suit/storage/jacket/marine/provost,
		/obj/item/clothing/suit/storage/marine/light/vest,
		/obj/item/clothing/suit/storage/webbing,
		/obj/item/clothing/suit/storage/jacket/marine/service/,
	)

/obj/item/clothing/under/marine/mp/provost/cmp
	name = "\improper USCM Chief Military Police utility uniform"
	desc = "The standard-issue utility uniform typically worn by a Chief MP on USCM military stations, bases and spacecrafts. Officers wearing this uniform are usually part of the USCM provost office."
	icon = 'modular/mp_rew/icons/MPic.dmi'
	icon_state = "provost_cmp"
	item_state = "provost_cmp"
	worn_state = "provost_cmp"
	item_state_slots = list(
		w_uniform = "provost_cmp",
	)
	item_icons = list(
		WEAR_BODY = 'modular/mp_rew/icons/MP.dmi',
	)
	suit_restricted = list(
		/obj/item/clothing/suit/storage/marine/MP,
		/obj/item/clothing/suit/armor/riot/marine,
		/obj/item/clothing/suit/storage/jacket/marine/provost,
		/obj/item/clothing/suit/storage/marine/light/vest,
		/obj/item/clothing/suit/storage/webbing,
		/obj/item/clothing/suit/storage/jacket/marine/service/,
	)

/obj/item/clothing/head/beret/marine/mp
	icon = 'icons/obj/items/clothing/hats/hats_by_faction/UA.dmi'
	icon_state = "beretwo"
	item_icons = list(
		WEAR_HEAD = 'icons/mob/humans/onmob/clothing/head/hats_by_faction/UA.dmi',
	)

/obj/item/clothing/head/beret/marine/mp/cmp
	icon = 'icons/obj/items/clothing/hats/hats_by_faction/UA.dmi'
	icon_state = "coblackberet"
	item_icons = list(
		WEAR_HEAD = 'icons/mob/humans/onmob/clothing/head/hats_by_faction/UA.dmi'
	)

/obj/item/clothing/head/helmet/marine/MP/provost/marshal/
	icon = 'modular/mp_rew/icons/MP_helmetic.dmi'
	desc = "A variant of the M10 for the Military Police, whether you're facing a crime syndicate or a mutiny. This bucket will keep your brains intact."
	icon_state = "pvmarshalhat"
	item_icons = list(
		WEAR_HEAD = 'modular/mp_rew/icons/MP_helmet.dmi'
	)

/obj/item/clothing/head/helmet/marine/MP/provost/marshal/cmp
	desc = "A variant of the M10 for the Сhief Military Police. Useful for letting your men know who is in charge.."
	icon_state = "pvmarshalhatcmp"
	item_state = "pvmarshalhatcmp"

/obj/item/clothing/suit/storage/marine/MP/provost/light/flexi/mp
	icon = 'modular/mp_rew/icons/MP_jacket_armoric.dmi'
	icon_state = "mppr"
	item_state = "mppr"
	item_state_slots = list(WEAR_JACKET = "mppr")
	uniform_restricted = list(/obj/item/clothing/under/marine/mp/provost/mp)
	item_icons = list(
		WEAR_JACKET = 'modular/mp_rew/icons/MP_jacket_armor.dmi'
	)

/obj/item/clothing/suit/storage/marine/MP/provost/light/flexi/mw
	icon = 'modular/mp_rew/icons/MP_jacket_armoric.dmi'
	icon_state = "mwpr"
	item_state = "mwpr"
	item_state_slots = list(WEAR_JACKET = "mwpr")
	uniform_restricted = list(/obj/item/clothing/under/marine/mp/provost/mw)
	item_icons = list(
		WEAR_JACKET = 'modular/mp_rew/icons/MP_jacket_armor.dmi'
	)

/obj/item/clothing/suit/storage/marine/MP/provost/light/flexi/cmp
	icon = 'modular/mp_rew/icons/MP_jacket_armoric.dmi'
	icon_state = "cmppr"
	item_state = "cmppr"
	item_state_slots = list(WEAR_JACKET = "cmppr")
	uniform_restricted = list(/obj/item/clothing/under/marine/mp/provost/cmp)
	item_icons = list(
		WEAR_JACKET = 'modular/mp_rew/icons/MP_jacket_armor.dmi'
	)

/obj/item/clothing/suit/storage/jacket/marine/service/mp/prov
	name = "\improper USCM Military Police service jacket"
	icon = 'modular/mp_rew/icons/MP_jacket_armoric.dmi'
	icon_state = "coat_mp"
	item_state = "coat_mp"
	uniform_restricted = list(/obj/item/clothing/under/marine/mp/provost/mp)
	item_icons = list(
		WEAR_JACKET = 'modular/mp_rew/icons/MP_jacket_armor.dmi'
	)

/obj/item/clothing/suit/storage/jacket/marine/service/warden/prov
	name = "\improper USCM Military Warden service jacket"
	icon = 'modular/mp_rew/icons/MP_jacket_armoric.dmi'
	icon_state = "coat_mw"
	item_state = "coat_mw"
	uniform_restricted = list(/obj/item/clothing/under/marine/mp/provost/mw)
	item_icons = list(
		WEAR_JACKET = 'modular/mp_rew/icons/MP_jacket_armor.dmi'
	)

/obj/item/clothing/suit/storage/jacket/marine/service/cmp/prov
	name = "\improper USCM Chief Military Police service jacket"
	icon = 'modular/mp_rew/icons/MP_jacket_armoric.dmi'
	icon_state = "coat_cmp"
	item_state = "coat_cmp"
	uniform_restricted = list(/obj/item/clothing/under/marine/mp/provost/cmp)
	item_icons = list(
		WEAR_JACKET = 'modular/mp_rew/icons/MP_jacket_armor.dmi'
	)
