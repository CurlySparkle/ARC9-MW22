local ATT = {}
---------------------------------------------------------------------------------------
--TRIGGERS--
ATT = {}
ATT.PrintName = "Bruen M680"
ATT.CompactName = "Bruen M680"
ATT.Description = [[A match-grade trigger from Bruen that increases fire rate and helps to stabilize aiming.]]
ATT.SortOrder = 1
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_triglight_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_triggers"}
ATT.RPMMult = 1.5
ARC9.LoadAttachment(ATT, "mw2022_papa220_light_trigger")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "XRK Heavy V3"
ATT.CompactName = "XRK Heavy V3"
ATT.Description = [[XRK's heavy trigger for the P890. Superior handling and accuracy with a slighy slower fire rate.]]
ATT.SortOrder = 2
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_trighvy_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_triggers"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_heavy_trigger")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "Bruen Express"
ATT.CompactName = "Bruen Express"
ATT.Description = [[A hair trigger for the P890. A trigger assembly with a remarkable inrease to fire rate. Reduces stability and accuracy.]]
ATT.SortOrder = 3
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_trighair_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_triggers"}
ATT.RPMMult = 2
ARC9.LoadAttachment(ATT, "mw2022_papa220_hair_trigger")
---------------------------------------------------------------------------------------
--GRIPS--
ATT = {}
ATT.PrintName = "Bruen Anchor Grip"
ATT.CompactName = "Bruen Anchor Grip"
ATT.Description = [[This rubber Bruen pistol grip features finger grooves and a texture that allows for reduced flinch when under fire.]]
ATT.SortOrder = 1
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_pstlgrp_aim_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_pistgrip"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_aim_grip")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "FJX DVF60 Grip"
ATT.CompactName = "FJX DVF60 Grip"
ATT.Description = [[This polymer grip from FJX provides better recoil control. Slight reduction to aiming stability.]]
ATT.SortOrder = 2
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_pstlgrp_ass_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_pistgrip"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_ass_grip")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "Bruen RSH-80 Grip"
ATT.CompactName = "Bruen RSH-80 Grip"
ATT.Description = [[A light wodden grip that increases handling and speed at the expense of some recoil control.]]
ATT.SortOrder = 3
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_pstlgrp_tac_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_pistgrip"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_tac_grip")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "BP-Grain Grip"
ATT.CompactName = "BP-Grain Grip"
ATT.Description = [[This wodden grip features a grippy texture for a firm hold. Resulting in better aiming stability and reduced flinch when under fire.]]
ATT.SortOrder = 4
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_pstlgrp_snp_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_pistgrip"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_snp_grip")
---------------------------------------------------------------------------------------
--MAGS--
ATT = {}
ATT.PrintName = "10 Round Mag"
ATT.CompactName = "10 Round Mag"
ATT.Description = [[A magazine that holds 10 rounds of .45 Auto ammunition.]]
ATT.SortOrder = 1
ATT.ClipSizeOverride = 10
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_wm_p27_pi_papa220_xmag_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_mags"}
ATT.ActivateElements = {"mag_none","mag_xmag"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_mags_10round")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "12 Round Mag"
ATT.CompactName = "12 Round Mag"
ATT.Description = [[A magazine that holds 12 rounds of .45 Auto ammunition.]]
ATT.SortOrder = 2
ATT.ClipSizeOverride = 12
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_wm_p27_pi_papa220_xmaglrg_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_mags"}
ATT.ActivateElements = {"mag_none","mag_xmaglrg"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_mags_12round")
---------------------------------------------------------------------------------------
--BARRELS--
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "Matuzek Cottonmouth"
ATT.CompactName = "Matuzek Cottonmouth"
ATT.Description = [[A long 140mm barrel improves bullet velocity and damage range while mitigating recoil. Extra weight decreases handling.]]
ATT.SortOrder = 1
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_barlong_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_slide"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_barlong")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "XRK Tacops Barrel"
ATT.CompactName = "XRK Tacops Barrel"
ATT.Description = [[A short tactical barrel with a threaded muzzle for muzzle devices. Increases movement and aiming speed.]]
ATT.SortOrder = 2
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_barlight_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_slide"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_barlight")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "Matuzek Venom Barrel"
ATT.CompactName = "Matuzek Venom Barrel"
ATT.Description = [[A Matuzek barrel t hat was designed for speed. Inreses aiming and movement speed.]]
ATT.SortOrder = 3
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_barshort_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_slide"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_barshort")
---------------------------------------------------------------------------------------
ATT = {}
ATT.PrintName = "XTEN Harbinger"
ATT.CompactName = "XTEN Harbinger"
ATT.Description = [[A Matuzek barrel t hat was designed for speed. Inreses aiming and movement speed.]]
ATT.SortOrder = 4
--ATT.Icon = Material("entities/attachs/cod2019_holger36_barrel_med.png", "mips smooth")
ATT.AutoStats = true
ATT.Free = false
ATT.Model = "models/pacagma/weapons/papa220/attachments/att_vm_p27_pi_papa220_barcomp_v0.mdl"
ATT.BoneMerge = true
ATT.MenuCategory = "ARC9 - MWII Attachments"
ATT.Category = {"mw22_papa220_slide"}
ATT.ActivateElements = {"mw22_papa220_xten_harbinger"}
ARC9.LoadAttachment(ATT, "mw2022_papa220_barcomp")
---------------------------------------------------------------------------------------


