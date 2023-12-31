AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Submachine Guns"

SWEP.PrintName = "FSS Hurricane"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Tempus Armament",
    ["Caliber"] = "5.7×28mm FN",
    ["Weight (Loaded)"] = "3.5 kg",
    ["Projectile Weight"] = "31 gr",
    ["Muzzle Velocity"] = "2,350 ft/s",
    ["Muzzle Energy"] = "515 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/AidenTheZapperGuy/Nekyo-ko/ZeR0-N/ola ola/box/Firmeteran",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = [[The FSS Hurricane sacrifices range and stopping power for increased ammo capacity and enhanced stabililty.]]

SWEP.ViewModel = "models/weapons/mw22/c_rif_fss.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_rif_fss.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7, 5, -1.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 24 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 50 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 698

SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.2

SWEP.RecoilSeed = 76523123

SWEP.RecoilPatternDrift = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1.2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.5 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.3
SWEP.VisualRecoilRoll = 50
SWEP.VisualRecoilSide = 0.5

SWEP.VisualRecoilMultSights = 0.5
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilSideSights = 0.2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.43, -4, 0),
    Ang = Angle(0.05, 0, 2.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 1.5, -3)
SWEP.PeekAng = Angle(0, 0.4, -45)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.05
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/mw22/mags/w_smg_fss_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/m4a1/"
local path2 = "weapons/mw22/fss/"
local path3 = "weapons/cod2019/p90/"

SWEP.ShootSound = "MW22.FSS.Fire"
SWEP.ShootSoundIndoor = "MW22.FSS.Fire"

SWEP.ShootSoundSilenced = "MW22.FSS.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.FSS.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_SMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_SMG.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_SMG_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path3 .. "wfoly_sm_papa90_ads_up.ogg"
SWEP.ExitSightsSound = path3 .. "wfoly_sm_papa90_ads_down.ogg"

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/p90/weap_papa90_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/p90/weap_papa90_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "vm_p01_sm_alpha57_reload_adjust.ogg", t = 0/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_magout.ogg", t = 22/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_adjust.ogg", t = 37/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_maghit.ogg", t = 60/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_magin.ogg", t = 67/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_end.ogg", t = 83/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		DropMagAt = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_mvmnt.ogg", t = 0/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_swing.ogg", t = 8/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_magout.ogg", t = 8/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_maghit.ogg", t = 40/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_magin.ogg", t = 41/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_end.ogg", t = 53/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 1.5,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_adjust.ogg", t = 0/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_magout.ogg", t = 22/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_mvmnt.ogg", t = 22/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_maghit.ogg", t = 60/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_magin.ogg", t = 67/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_charge.ogg", t = 85/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_end.ogg", t = 97/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		DropMagAt = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_mvmnt.ogg", t = 0/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_swing.ogg", t = 8/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_magout.ogg", t = 8/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_maghit.ogg", t = 40/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_magin.ogg", t = 41/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_boltrelease.ogg", t = 57/30},
			{s = path2 .. "vm_p01_sm_alpha57_reload_fast_end.ogg", t = 60/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "vm_p01_sm_alpha57_reload_empty_charge.ogg", t = 11/30},
            {s = path2 .. "vm_p01_sm_alpha57_raise.ogg", t = 17/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        EventTable = {
            {s = path2 .. "vm_p01_sm_alpha57_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		--Mult = 0.8,
        EventTable = {
            {s = path2 .. "vm_p01_sm_alpha57_reload_down.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2.2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.2,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1.1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path2 .. "vm_p01_sm_alpha57_inspect_up.ogg", t = 6/30},
			{s = path2 .. "vm_p01_sm_alpha57_inspect_rotate.ogg", t = 91/30},
			{s = path2 .. "vm_p01_sm_alpha57_inspect_drop.ogg", t = 177/30},
			{s = path2 .. "vm_p01_sm_alpha57_inspect_end.ogg", t = 202/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "vm_p01_sm_alpha57_semiselect_toggle_on_mvmnt.ogg", t = 0/30},
            {s = path .. "vm_p01_sm_alpha57_semiselect_toggle_on_selector.ogg", t = 4/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "vm_p01_sm_alpha57_semiselect_toggle_off_mvmnt.ogg", t = 0/30},
            {s = path .. "vm_p01_sm_alpha57_semiselect_toggle_off_selector.ogg", t = 4/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(13, -0.5, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.7, 0, 0),
    },
}

SWEP.AttachmentElements = {
    ["sight"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["muzzle"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {4,1},
			{3,0},
        },
    },
    ["stock"] = {
        Bodygroups = {
            {4,1},
			{3,1},
        },
    },
    ["stock_main"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["mag_hide"] = {
        Bodygroups = {
            {5,1},
        },
    },
	["barrel"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,0) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_fss_barrel",
        Bone = "tag_attachments",
        Pos = Vector(12.5, 0, -0.55),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = "cod2019_optic",
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(1.3, 0, 0.1),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle"},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(8, 1, -1),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-1, 0, 0.1),
        Ang = Angle(0, 0, 180),
		Scale = 1,
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0.03),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_fss",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/smg_fss_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/smg_fss_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/smg_fss_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_attachments",
        Pos = Vector(7, -1.5, 0.55),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_attachments",
        Pos = Vector(3, -1.38, 0.55),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 0.4
SWEP.GripPoseParam2 = 0
SWEP.CodAngledGripPoseParam = 24
SWEP.CodStubbyGripPoseParam = 13