AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "Expedite 12"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Expedite Firearms",
    ["Caliber"] = "12-Gauge",
    ["Weight (Loaded)"] = "3.2 kg",
    ["Projectile Weight"] = "493 gr",
    ["Muzzle Velocity"] = "1,433.73 ft/s",
    ["Muzzle Energy"] = "3,051 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle//Nekyo-ko/Pacagma/Firmeteran",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = [[A practiced hand can control the Expedite 12's recoil to devastating effects. This semi-auto shotgun features a regulated gas system, ergonomic stock, and standard rail.]]

SWEP.ViewModel = "models/weapons/mw22/c_shot_expendite12.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "000000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_shot_expendite12.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-7, 3, 0),
    TPIKAng = Angle(-10, 3, 180),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 103 -- Damage done at point blank range
SWEP.DamageMin = 40 -- Damage done at maximum range

SWEP.DistributeDamage = true

SWEP.Num = 6

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 500
SWEP.RangeMax = 3000

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

SWEP.RicochetChance = 0

-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 7 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.ForceStandardCrosshair = true

-- SWEP.ManualAction = true
-- SWEP.NoLastCycle = true

-- SWEP.ManualAction = true
-- SWEP.ManualActionNoLastCycle = true

-------------------------- FIREMODES

SWEP.RPM = 146

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 8

SWEP.RecoilSeed = 65947

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 2.5
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilSide = -0.1

SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilUpSights = 1
SWEP.VisualRecoilPunchSights = 55

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
SWEP.VisualRecoilDampingConstSights = 50
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

-- SWEP.Spread = 0.035

-- SWEP.SpreadAddRecoil = 0.02 -- Applied per unit of recoil.

-- SWEP.SpreadAddSights = 0.5
-- SWEP.SpreadAddMove = 0.055
-- --SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddHipFire = 0.065
-- SWEP.SpreadMultHipFire = 1
-- SWEP.SpreadAddCrouch = -0.004
-- SWEP.SpreadAddSightsMove = -0.1

SWEP.Spread = 300 * ARC9.MOAToAcc
SWEP.SpreadAddRecoil = 0.02
SWEP.UseDispersion = true
SWEP.DispersionSpread = 0.01
SWEP.DispersionSpreadAddHipFire = 0.02
--SWEP.DispersionSpreadMultMove = 1.5
--SWEP.DispersionSpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.255

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.5, -1, 0.7),
    Ang = Angle(-1, 0, -1.5),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, 1, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -1)
SWEP.MovingAng = Angle(-0.4, 0.1, -9)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0.6, 0.3, -9)

SWEP.PeekPos = Vector(-1, 1.5, -3.2)
SWEP.PeekAng = Angle(0, 0.4, -45)

SWEP.CustomizeAng = Angle(90, 0, 1)
SWEP.CustomizePos = Vector(15, 35, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_shotgun_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_origin12.mdl"
SWEP.ShellSounds = {
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav",
    "arc9/casings/casing_12ga_1.wav",
    "arc9/casings/casing_12ga_2.wav",
    "arc9/casings/casing_12ga_3.wav",
    "arc9/casings/casing_12ga_4.wav",
    "arc9/casings/casing_12ga_1.wav"
}
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1.3
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = false
SWEP.EjectDelay = 0.12

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.ShotgunReload = true

--SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_50gs_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav", "physics/metal/weapon_impact_soft2.wav", "physics/metal/weapon_impact_soft3.wav"}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineAng = Angle(0, -90, 0)
SWEP.DropMagazineQCA = 4

-------------------------- SOUNDS

local path = "weapons/mw22/expendite12/"
local path2 = "weapons/cod2019/m13/"

SWEP.ShootSound = "MW22.Expendite.Fire"
SWEP.ShootSoundIndoor = "MW22.Expendite.Fire"

SWEP.ShootSoundSilenced = "MW22.Expendite.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.Expendite.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Shotgun.Outside"
SWEP.DistantShootSound = "Distant_Shotgun_2.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Shotgun_Sub.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ShotgunSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_ShotgunSUP.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "weap_sh_oscar12_ads_up.ogg"
SWEP.ExitSightsSound = path .. "weap_sh_oscar12_ads_down.ogg"

SWEP.TriggerDelay = 0.01 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.01 -- Time until weapon fires.

SWEP.TriggerDownSound = path .. "weap_mike1014_fire_plr_fcg_01.ogg"
SWEP.TriggerUpSound = path .. "weap_mike1014_fcg_disconnector_plr_01.ogg"

SWEP.HideBones  = {
    [1] = "j_ammo_01",
    [2] = "j_ammo_02",
    [3] = "j_ammo_03",
    [4] = "j_ammo_04",
}

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		Mult = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
		RestoreAmmo = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_reload_start_rotate.ogg", t = 0/30},
			{s = path .. "p12_sh_mike1014_reload_start_loadshell.ogg", t = 19/30},
        },
    },
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = "MW22.Expendite.ShellIn", t = 14/30},
        },
    },
    ["reload_finish"] = {
        Source = "reload_end",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p12_sh_mike1014_reload_end.ogg", t = 1/30},
        },
    },
    ["reload_start_empty"] = {
        Source = "reload_start_empty",
		EjectAt = 0.4,
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_reload_empty_chamber_start_rotate.ogg", t = 0/30},
            {s = path .. "p12_sh_mike1014_reload_empty_chamber_start_arm.ogg", t = 13/30},
            {s = path .. "p12_sh_mike1014_reload_empty_chamber_start_charge.ogg", t = 29/30},
            {s = path .. "p12_sh_mike1014_reload_empty_start_hand.ogg", t = 51/30},
            {s = path .. "p12_sh_mike1014_reload_empty_start_mvmnt.ogg", t = 55/30},
            {s = path .. "p12_sh_mike1014_reload_empty_start_shell.ogg", t = 61/30},
            {s = path .. "p12_sh_mike1014_reload_empty_start_loadshell.ogg", t = 72/30},
            
        },
    },
    ["reload_start_fast"] = {
        Source = "reload_start_fast",
		RestoreAmmo = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_reload_fast_start_rotate.ogg", t = 0},
            {s = path .. "p12_sh_mike1014_reload_fast_start_loadshell.ogg", t = 12/30},
        },
    },
    ["reload_insert_fast"] = {
        Source = "reload_loop_fast",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = "MW22.Expendite.ShellIn_Fast", t = 8/30},
        },
    },
    ["reload_finish_fast"] = {
        Source = "reload_end_fast",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p12_sh_mike1014_reload_fast_end.ogg", t = 1/30},
        },
    },
    ["reload_start_fast_empty"] = {
        Source = "reload_fast_start_empty",
		--EjectAt = 0.4,
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_reload_fast_empty_chamber_start_rotate.ogg", t = 0/30},
            {s = path .. "p12_sh_mike1014_reload_fast_empty_chamber_start_loadshell.ogg", t = 19/30},
            {s = path .. "p12_sh_mike1014_reload_fast_empty_chamber_start_boltrelease.ogg", t = 31/30},
            {s = path .. "p12_sh_mike1014_reload_fast_empty_start_rotate.ogg", t = 40/30},
            {s = path .. "p12_sh_mike1014_reload_fast_empty_start_loadshell.ogg", t = 54/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
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
            {s = path .. "p12_sh_mike1014_raise.ogg", t = 0/30},
            {s = path .. "p12_sh_mike1014_inspect_charge.ogg", t = 21/30},
            {s = path .. "p12_sh_mike1014_reload_end.ogg", t = 25/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_raise_quick.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		Mult = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2,
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
                t = 0.4,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_inspect_raise.ogg", t = 5/30},
			{s = path .. "p12_sh_mike1014_inspect_adjust.ogg", t = 27/30},
			{s = path .. "p12_sh_mike1014_inspect_turn.ogg", t = 79/30},
			{s = path .. "p12_sh_mike1014_inspect_boltpull.ogg", t = 103/30},
			{s = path .. "p12_sh_mike1014_inspect_shelleject.ogg", t = 100/30},
			{s = path .. "p12_sh_mike1014_inspect_charge.ogg", t = 170/30},
			{s = path .. "p12_sh_mike1014_reload_fast_empty_chamber_start_loadshell.ogg", t = 184/30},
			{s = path .. "p12_sh_mike1014_reload_fast_empty_chamber_start_boltrelease.ogg", t = 188/30},
			{s = path .. "p12_sh_mike1014_inspect_end.ogg", t = 198/30},
        },
    },
    ["inspect_empty"] = {
        Source = "lookat01_empty",
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p12_sh_mike1014_inspect_raise.ogg", t = 5/30},
			{s = path .. "p12_sh_mike1014_inspect_adjust.ogg", t = 27/30},
			{s = path .. "p12_sh_mike1014_inspect_turn.ogg", t = 79/30},
			{s = path .. "p12_sh_mike1014_inspect_end.ogg", t = 100/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("shot_mag") then
        return "reload_mag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("shot_mag") then 
        return "reload_mag_empty_fast"
--------------------------------------------------------------
    -- elseif anim == "reload" and wep:HasElement("shot_mag") then 
        -- return "reload_mag"
    -- elseif anim == "reload_empty" and wep:HasElement("shot_mag") then 
        -- return "reload_mag_empty"
--------------------------------------------------------------
    elseif anim == "reload_start" and wep:HasElement("perk_speedreload") then
        return "reload_start_fast"
    elseif anim == "reload_insert" and wep:HasElement("perk_speedreload") then 
        return "reload_insert_fast"
    elseif anim == "reload_finish" and wep:HasElement("perk_speedreload") then 
        return "reload_finish_fast"
    elseif anim == "reload_start_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_start_fast_empty"
    end
end


SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(4, 0, -1.3),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["cod2019_laser_02_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-0.5, 27, -1.5),
        Ang = Angle(-0.6, -1.8, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_laser_01_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-0.5, 27, -1.5),
        Ang = Angle(-0.6, -1.8, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_laser_03_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-0.5, 27, -1.5),
        Ang = Angle(-0.6, -1.8, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["pump_rail"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["pump_none"] = {
        Bodygroups = {
            {2,2},
        },
    },
    ["rail_sight_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["front_sight_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {4,1},
            {6,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["tag_laser"] = {
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
        Category = "cod2019_expendite12_barrels",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(5, 0, -0.5),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_shot",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_expendite12_optic"},
        CorrectiveAng = Angle(-0.5, 1.5, 0),
		--InstalledElements = {""},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_cylinde",
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"tag_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip","cod2019_expendite12_grips"},
        Bone = "tag_grip_attach",
        Pos = Vector(4.5, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {""},
    },
    {
        PrintName = "Pistol Grip",
        DefaultAttName = "Default",
        Category = {"cod2019_expendite12_pistolgrip"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {""},
		Icon_Offset = Vector(1, 0, 1.5),
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_tube",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {""},
		Scale = 1,
    },
    {
        PrintName = "Ammo",
        Bone = "tag_sling",
        Category = {"cod2019_ammo_sg"},
        Pos = Vector(5, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    -- -- {
        -- -- PrintName = "Mag",
		-- -- Bone = "tag_attachments",
        -- -- Category = {"cod2019_mag","cod2019_expendite120_mag"},
        -- -- Pos = Vector(5, 0, 0),
        -- -- Ang = Angle(0, 0, 0),
    -- -- },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_shot"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_model680",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    -- {
        -- PrintName = "Stickers",
        -- StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_a.mdl",
        -- Category = "stickers",
    -- },
    -- {
        -- PrintName = "Stickers",
        -- StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_b.mdl",
        -- Category = "stickers",
    -- },
    -- {
        -- PrintName = "Stickers",
        -- StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_c.mdl",
        -- Category = "stickers",
    -- },
    -- {
        -- PrintName = "Stickers",
        -- StickerModel = "models/weapons/cod2019/stickers/shot_model680_decal_d.mdl",
        -- Category = "stickers",
    -- },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(3, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.3
SWEP.GripPoseParam2 = 0.7
SWEP.CodAngledGripPoseParam = 26
SWEP.CodStubbyGripPoseParam = 8
SWEP.CodStubbyTallGripPoseParam = 18