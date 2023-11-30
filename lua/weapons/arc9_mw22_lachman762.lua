AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "Lachmann-762"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "West Germany",
    ["Manufacturer"] = "Lachmann & Meer",
    ["Caliber"] = "7.62 NATO",
    ["Weight (Loaded)"] = "4.38 kg",
    ["Projectile Weight"] = "144 gr",
    ["Muzzle Velocity"] = "2,625 ft/s",
    ["Muzzle Energy"] = "2,988 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Viper/Ma_rv/radpas1213/Pacagma/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}

SWEP.Description = [[A delayed blowback 7.62 receiver with equal parts power and control. Select fire allows precise semi-auto shots and short bursts of devastating full-auto firepower.]]

SWEP.ViewModel = "models/weapons/mw22/c_rif_lachmann_762.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_rif_lachmann_762.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-9.5, 6.2, -5.5),
    Ang = Angle(-7, 0, 180),
    Scale = 1,
    TPIKPos = Vector(-8.4, 5.5, -2.3),
    TPIKAng = Angle(-9, 0, 175)
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 36 -- Damage done at point blank range
SWEP.DamageMin = 28 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 3000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 9000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2150 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.2

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 6 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 612

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
		RPM = 450,
		PoseParam = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 213654

SWEP.RecoilPatternDrift = 25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.8 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.6

SWEP.RecoilDissipationRate = 100 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.85
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.85

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.2

SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 5
SWEP.VisualRecoilSideSights = 0

SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilDampingConstSights = 20
SWEP.VisualRecoilSpringMagnitude = 30
SWEP.VisualRecoilSpringPunchDampingSights = nil

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
SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 1
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.06
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.79, -2, 0.9),
    Ang = Angle(0, 0, 0),
    Magnification = 1.15,
	ViewModelFOV = 54,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(1, -1, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-0.8, -1, -1)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(17, 35, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 13, 3)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 1, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

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
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_g3a3_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ar_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.9
SWEP.DropMagazineQCA = 3

-------------------------- SOUNDS

local path = "weapons/mw22/lachmann/"

SWEP.ShootSound = "MW22.Lachmann.Fire"
SWEP.ShootSoundIndoor = "MW22.Lachmann.Fire"

SWEP.ShootSoundSilenced = "MW22.Lachmann.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.Lachmann.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_ar_kilo433_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_ar_kilo433_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_01",
    [2] = "j_ammo_02",
    [3] = "j_ammo_03",
    [4] = "j_ammo_04",
    [5] = "j_ammo_05",
    [6] = "j_ammo_06",
    [7] = "j_ammo_07",
    [8] = "j_ammo_08",
    [9] = "j_ammo_09",
    [10] = "j_ammo_10",
    [11] = "j_ammo_11",
    [12] = "j_ammo_12",
    [13] = "j_ammo_13",
    [14] = "j_ammo_14",
    [15] = "j_ammo_15",
    [16] = "j_ammo_16",
    [17] = "j_ammo_17",
    [18] = "j_ammo_18",
    [19] = "j_ammo_19",
    [20] = "j_ammo_20",
    [21] = "j_ammo_21",
    [22] = "j_ammo_22",
    [23] = "j_ammo_23",
    [24] = "j_ammo_24",
    [25] = "j_ammo_25",
    [26] = "j_ammo_26",
    [27] = "j_ammo_27",
    [28] = "j_ammo_28",
    [29] = "j_ammo_29",
    [30] = "j_ammo_30",
    [31] = "j_ammo_31"
}

--SWEP.ReloadHideBonesFirstPerson = true
SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.01 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.01 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/mw22/lachmann/weap_kilo53_fcg_deadtrig_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/mw22/lachmann/weap_kilo53_fcg_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
    },
    ["untrigger"] = {
        Source = "untrigger",
    },
    ["reload"] = {
        Source = "reload",
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
            {s = path .. "vm_p02_ar_kilo53_reload_bolt_back.ogg", t = 0/30},
            {s = path .. "vm_p02_ar_kilo53_reload_grab_mag.ogg", t = 21/30},
			{s = path .. "vm_p02_ar_kilo53_reload_mag_out.ogg", t = 27/30},
			{s = path .. "vm_p02_ar_kilo53_reload_mag_in.ogg", t = 50/30},
			{s = path .. "vm_p02_ar_kilo53_reload_turn.ogg", t = 52/30},
			{s = path .. "vm_p02_ar_kilo53_reload_turn.ogg", t = 72/30},
			{s = path .. "vm_p02_ar_kilo53_reload_bolt_release.ogg", t = 78/30},
			{s = path .. "vm_p02_ar_kilo53_reload_end.ogg", t = 85/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		DropMagAt = 1.4,
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_start.ogg", t = 0/30},
            {s = path .. "mp5-submachinegun-foley-bolt-charge-1.ogg", t = 6/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_rattle.ogg", t = 44/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_magin_v2_01.ogg", t = 52/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_magin_v2_02.ogg", t = 63/30},
			{s = path .. "g3_boltpullreleasesoh.ogg", t = 78/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_end.ogg", t = 94/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		DropMagAt = 1.2,
		MagSwapTime = 0.85,
		MinProgress = 0.8,
		FireASAP = true,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "vm_p02_ar_kilo53_reload_fast_roll.ogg", t = 0/30},
			{s = path .. "vm_p02_ar_kilo53_reload_fast_mag_out.ogg", t = 9/30},
			{s = path .. "vm_p02_ar_kilo53_reload_fast_mag_hit.ogg", t = 30/30},
			{s = path .. "vm_p02_ar_kilo53_reload_fast_mag_in.ogg", t = 38/30},
			{s = path .. "vm_p02_ar_kilo53_reload_end.ogg", t = 48/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		DropMagAt = 1.2,
		MagSwapTime = 0.85,
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
                t = 0.5,
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
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_start.ogg", t = 0},
            {s = path .. "mp5-submachinegun-foley-bolt-charge-1.ogg", t = 0.13},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_magout_01.ogg", t = 0.7},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_magin_v2_01.ogg", t = 1.37},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_magin_v2_02.ogg", t = 1.57},
			{s = path .. "g3_boltpullrelease.ogg", t = 2.0},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_end.ogg", t = 2.3},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
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
            {s = path .. "wfoly_plr_ar_falima_reload_xmag_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_xmag_rattle.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_falima_reload_xmag_magout_01.ogg", t = 17/30},
			{s = path .. "wfoly_plr_ar_falima_reload_xmag_magin_v2_01.ogg", t = 37/30},
			{s = path .. "wfoly_plr_ar_falima_reload_xmag_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_plr_ar_falima_raise_start.ogg", t = 61/30},
			{s = path .. "wfoly_plr_ar_falima_reload_xmag_end.ogg", t = 63/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		DropMagAt = 1.4,
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_start.ogg", t = 0/30},
            {s = path .. "mp5-submachinegun-foley-bolt-charge-1.ogg", t = 6/30},
            {s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_magout_01.ogg", t = 25/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_rattle.ogg", t = 44/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_magin_v2_01.ogg", t = 52/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_magin_v2_02.ogg", t = 63/30},
			{s = path .. "g3_boltpullreleasesoh.ogg", t = 78/30},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_xmag_end.ogg", t = 94/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		DropMagAt = 0.9,
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_plr_ar_falima_reload_fast_xmag_start.ogg", t = 0/30},
            {s = path .. "wfoly_plr_ar_falima_reload_fast_xmag_rattle.ogg", t = 5/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_xmag_magout_01.ogg", t = 9/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_xmag_magin_v2_01.ogg", t = 30/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_xmag_magin_v2_02.ogg", t = 38/30},
			{s = path .. "wfoly_plr_ar_falima_reload_fast_xmag_end.ogg", t = 48/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		DropMagAt = 0.9,
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
            {s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_start.ogg", t = 0},
            {s = path .. "mp5-submachinegun-foley-bolt-charge-1.ogg", t = 0.13},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_magout_01.ogg", t = 0.7},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_magin_v2_01.ogg", t = 1.37},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_magin_v2_02.ogg", t = 1.57},
			{s = path .. "g3_boltpullrelease.ogg", t = 2.0},
			{s = path .. "wfoly_plr_ar_falima_reload_empty_fast_xmag_end.ogg", t = 2.3},
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
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "vm_p02_ar_kilo53_raise.ogg", t = 0/30},
            {s = path .. "vm_p02_ar_kilo53_reload_bolt_back.ogg", t = 21/30},
			{s = path .. "vm_p02_ar_kilo53_reload_bolt_release.ogg", t = 23/30},
			{s = path .. "vm_p02_ar_kilo53_reload_end.ogg", t = 31/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            {
                t = 0,
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
            {s = path .. "vm_p02_ar_kilo53_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "vm_p02_ar_kilo53_drop.ogg", t = 0/30},
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
        Time = 1.5,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1.5,
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
                t = 0.1,
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
            {s = path .. "vm_p02_ar_kilo53_inspect_mag_out.ogg", t = 5/30},
			{s = path .. "vm_p02_ar_kilo53_inspect_mvmnt.ogg", t = 41/30},
			{s = path .. "vm_p02_ar_kilo53_inspect_mag_in.ogg", t = 60/30},
			{s = path .. "vm_p02_ar_kilo53_inspect_bolt_back.ogg", t = 82/30},
			{s = path .. "vm_p02_ar_kilo53_inspect_chest.ogg", t = 108/30},
			{s = path .. "vm_p02_ar_kilo53_inspect_bolt_release.ogg", t = 111/30},
			{s = path .. "vm_p02_ar_kilo53_inspect_end.ogg", t = 122/30},
        },
    },
    ["bash"] = {
        Source = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
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
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_kilo433_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_kilo433_selector_on.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "vm_p02_ar_kilo53_inspect_rotate.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then 
        return "reload_xmag_fast_empty"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_drum") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_drum") then 
        return "reload_xmag_empty"
    end
end

SWEP.DefaultBodygroups = "000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(14.6, -0.83, -0.8),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.7,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.7, 0, 0.1),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(2, 22, -1),
        Ang = Angle(0.3, -0.2, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_02"] = {
    Sights = {
    {
        Pos = Vector(2, 22, -1),
        Ang = Angle(0.3, -0.2, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_03"] = {
    Sights = {
    {
        Pos = Vector(2, 22, -1),
        Ang = Angle(0.3, -0.2, -45),
        ViewModelFOV = 54,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["ref_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_attach"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("barrel_sniper") or wep:HasElement("barrel_custom") then 
	model:SetBodygroup(7,0) 
	end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = {"cod2019_lachmann_barrel"},
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"rail_sight","sights_none"},
		Scale = 1,
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Rear Grip",
        DefaultAttName = "Standard",
        Category = "cod2019_lachmann_pstgrip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(1.5, 0, -2),
		Scale = 1,
		InstalledElements = {"pistol_grip_none"},
    },
    {
        PrintName = "Reciever",
        DefaultAttName = "Standard",
        Category = {"cod2019_lachmann_reciever"},
        Bone = "tag_sling",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(-8, 0, -2),
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_lachmann_stock","cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0.45, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
		InstalledElements = {"stock_attach"},
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
        Category = {"cod2019_mag","cod2019_lachmann_mag"},
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
        Category = "cod2019_g3a3_skins",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/rif_lachmann762_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/rif_lachmann762_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/rif_lachmann762_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/rif_lachmann762_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, -0.75, -0.5),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_sling",
        Pos = Vector(2, -0.5, 0.3),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 3
SWEP.GripPoseParam2 = 0.3
SWEP.CodAngledGripPoseParam = 25.8
SWEP.CodStubbyGripPoseParam = 6.1