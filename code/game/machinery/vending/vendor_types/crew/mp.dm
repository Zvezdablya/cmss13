//------------ MP CLOTHING VENDOR---------------

GLOBAL_LIST_INIT(cm_vending_clothing_military_police, list(
		list("POLICE SET (MANDATORY)", 0, null, null, null),
		list("Essential Police Set", 0, /obj/effect/essentials_set/police, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_MANDATORY),

		list("STANDARD EQUIPMENT (TAKE ALL)", 0, null, null, null),
		list("Gloves", 0, /obj/item/clothing/gloves/marine, MARINE_CAN_BUY_GLOVES, VENDOR_ITEM_MANDATORY),
		list("Uniform", 0, /obj/item/clothing/under/marine/mp/provost/mp, MARINE_CAN_BUY_UNIFORM, VENDOR_ITEM_MANDATORY), //SS220 EDIT
		list("Laceup", 0, /obj/item/clothing/shoes/laceup, MARINE_CAN_BUY_SHOES, VENDOR_ITEM_MANDATORY), //SS220 EDIT

		list("ARMOR (TAKE ALL)", 0, null, null, null),
		list("Ceramic Plate", 0, /obj/item/clothing/accessory/health/ceramic_plate, MARINE_CAN_BUY_ARMOR, VENDOR_ITEM_MANDATORY), //SS220 EDIT
		list("MP Beret", 0, /obj/item/clothing/head/beret/marine/mp, MARINE_CAN_BUY_HELMET, VENDOR_ITEM_MANDATORY),
		list("MP armband", 0, /obj/item/clothing/accessory/armband/mp, MARINE_CAN_BUY_ACCESSORY, VENDOR_ITEM_RECOMMENDED), //SS220 EDIT

		list("HANDGUN CASE (CHOOSE 1)", 0, null, null, null),
		list("88 mod 4 Combat Pistol Case", 0, /obj/item/storage/box/guncase/mod88, MARINE_CAN_BUY_SECONDARY, VENDOR_ITEM_MANDATORY),
		list("M44 Combat Revolver Case", 0, /obj/item/storage/box/guncase/m44, MARINE_CAN_BUY_SECONDARY, VENDOR_ITEM_MANDATORY),
		list("M4A4 Service Pistol Case", 0, /obj/item/storage/box/guncase/m4a4, MARINE_CAN_BUY_SECONDARY, VENDOR_ITEM_MANDATORY),

		list("BACKPACK (CHOOSE 1)", 0, null, null, null),
		list("Military Police Satchel", 0, /obj/item/storage/backpack/satchel/sec, MARINE_CAN_BUY_BACKPACK, VENDOR_ITEM_MANDATORY),

		list("BELT (CHOOSE 1)", 0, null, null, null),
		list("M276 General Pistol Holster Rig", 0, /obj/item/storage/belt/gun/m4a3, MARINE_CAN_BUY_BELT, VENDOR_ITEM_REGULAR),
		list("M276 General Revolver Holster Rig", 0, /obj/item/storage/belt/gun/m44, MARINE_CAN_BUY_BELT, VENDOR_ITEM_REGULAR),

		list("POUCHES (CHOOSE 2)", 0, null, null, null),
		list("Large General Pouch", 0, /obj/item/storage/pouch/general/large, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_REGULAR), //SS220 EDIT
		list("First-Aid Pouch (Refillable Autoinjectors)", 0, /obj/item/storage/pouch/firstaid/full, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_RECOMMENDED),
		list("First-Aid Pouch (Splints, Gauze, Ointment)", 0, /obj/item/storage/pouch/firstaid/full/alternate, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_RECOMMENDED),
		list("First-Aid Pouch (Pill Packets)", 0, /obj/item/storage/pouch/firstaid/full/pills, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_RECOMMENDED),
		list("Pistol Magazine Pouch", 0, /obj/item/storage/pouch/magazine/pistol, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_REGULAR),
		list("Pistol Pouch", 0, /obj/item/storage/pouch/pistol, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_REGULAR),

		list("MASK (CHOOSE 1)", 0, null, null, null),
		list("Gas Mask", 0, /obj/item/clothing/mask/gas, MARINE_CAN_BUY_MASK, VENDOR_ITEM_REGULAR),
		list("Heat Absorbent Coif", 0, /obj/item/clothing/mask/rebreather/scarf, MARINE_CAN_BUY_MASK, VENDOR_ITEM_REGULAR),
		list("Rebreather", 0, /obj/item/clothing/mask/rebreather, MARINE_CAN_BUY_MASK, VENDOR_ITEM_REGULAR),
	))

/obj/structure/machinery/cm_vending/clothing/military_police
	name = "\improper ColMarTech Military Police Equipment Rack"
	desc = "An automated rack hooked up to a colossal storage of Military Police standard-issue equipment."
	req_access = list(ACCESS_MARINE_BRIG)
	vendor_role = list(JOB_POLICE,JOB_POLICE_HG)

/obj/structure/machinery/cm_vending/clothing/military_police/get_listed_products(mob/user)
	return GLOB.cm_vending_clothing_military_police

//------------ Warden CLOTHING VENDOR---------------

GLOBAL_LIST_INIT(cm_vending_clothing_military_police_warden, list(
		list("POLICE SET (MANDATORY)", 0, null, null, null),
		list("Essential Police Set", 0, /obj/effect/essentials_set/police, MARINE_CAN_BUY_ESSENTIALS, VENDOR_ITEM_MANDATORY),

		list("STANDARD EQUIPMENT (TAKE ALL)", 0, null, null, null),
		list("Gloves", 0, /obj/item/clothing/gloves/marine, MARINE_CAN_BUY_GLOVES, VENDOR_ITEM_MANDATORY),
		list("Warden Uniform", 0, /obj/item/clothing/under/marine/mp/provost/mw, MARINE_CAN_BUY_UNIFORM, VENDOR_ITEM_MANDATORY), //SS220 EDIT
		list("Laceup", 0, /obj/item/clothing/shoes/laceup, MARINE_CAN_BUY_SHOES, VENDOR_ITEM_MANDATORY), //SS220 EDIT
		list("MP armband", 0, /obj/item/clothing/accessory/armband/mp, MARINE_CAN_BUY_ACCESSORY, VENDOR_ITEM_RECOMMENDED), //SS220 EDIT

		list("ARMOR (TAKE ALL)", 0, null, null, null),
		list("Ceramic Plate", 0, /obj/item/clothing/accessory/health/ceramic_plate, MARINE_CAN_BUY_ARMOR, VENDOR_ITEM_MANDATORY), //SS220 EDIT
		list("Warden Peaked Cap", 0, /obj/item/clothing/head/beret/marine/mp/warden, MARINE_CAN_BUY_HELMET, VENDOR_ITEM_MANDATORY),

		list("HANDGUN CASE (CHOOSE 1)", 0, null, null, null),
		list("88 mod 4 Combat Pistol Case", 0, /obj/item/storage/box/guncase/mod88, MARINE_CAN_BUY_SECONDARY, VENDOR_ITEM_MANDATORY),
		list("M44 Combat Revolver Case", 0, /obj/item/storage/box/guncase/m44, MARINE_CAN_BUY_SECONDARY, VENDOR_ITEM_MANDATORY),
		list("M4A4 Service Pistol Case", 0, /obj/item/storage/box/guncase/m4a4, MARINE_CAN_BUY_SECONDARY, VENDOR_ITEM_MANDATORY),

		list("BACKPACK (CHOOSE 1)", 0, null, null, null),
		list("Military Police Satchel", 0, /obj/item/storage/backpack/satchel/sec, MARINE_CAN_BUY_BACKPACK, VENDOR_ITEM_MANDATORY),

		list("BELT (CHOOSE 1)", 0, null, null, null),
		list("M276 General Pistol Holster Rig", 0, /obj/item/storage/belt/gun/m4a3, MARINE_CAN_BUY_BELT, VENDOR_ITEM_REGULAR),
		list("M276 General Revolver Holster Rig", 0, /obj/item/storage/belt/gun/m44, MARINE_CAN_BUY_BELT, VENDOR_ITEM_REGULAR),

		list("POUCHES (CHOOSE 2)", 0, null, null, null),
		list("Large General Pouch", 0, /obj/item/storage/pouch/general/large, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_REGULAR), //SS220 EDIT
		list("First-Aid Pouch (Refillable Autoinjectors)", 0, /obj/item/storage/pouch/firstaid/full, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_RECOMMENDED),
		list("First-Aid Pouch (Splints, Gauze, Ointment)", 0, /obj/item/storage/pouch/firstaid/full/alternate, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_RECOMMENDED),
		list("First-Aid Pouch (Pill Packets)", 0, /obj/item/storage/pouch/firstaid/full/pills, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_RECOMMENDED),
		list("Pistol Magazine Pouch", 0, /obj/item/storage/pouch/magazine/pistol, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_REGULAR),
		list("Pistol Pouch", 0, /obj/item/storage/pouch/pistol, MARINE_CAN_BUY_POUCH, VENDOR_ITEM_REGULAR),

		list("MASK (CHOOSE 1)", 0, null, null, null),
		list("Gas Mask", 0, /obj/item/clothing/mask/gas, MARINE_CAN_BUY_MASK, VENDOR_ITEM_REGULAR),
		list("Heat Absorbent Coif", 0, /obj/item/clothing/mask/rebreather/scarf, MARINE_CAN_BUY_MASK, VENDOR_ITEM_REGULAR),
		list("Rebreather", 0, /obj/item/clothing/mask/rebreather, MARINE_CAN_BUY_MASK, VENDOR_ITEM_REGULAR),
	))

/obj/structure/machinery/cm_vending/clothing/military_police_warden
	name = "\improper ColMarTech Military Warden Equipment Rack"
	desc = "An automated rack hooked up to a colossal storage of Military Police standard-issue equipment."
	req_access = list(ACCESS_MARINE_BRIG)
	vendor_role = list(JOB_WARDEN)

/obj/structure/machinery/cm_vending/clothing/military_police_warden/get_listed_products(mob/user)
	return GLOB.cm_vending_clothing_military_police_warden

/obj/effect/essentials_set/police
	spawned_gear_list = list(
		/obj/item/storage/box/zipcuffs/small, //SS220 EDIT start
		/obj/item/storage/pouch/tools/tactical/sec/full,
		/obj/item/clothing/head/helmet/marine/MP/provost/marshal, //SS220 EDIT end
	)
