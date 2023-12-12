AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Handguns"

SWEP.PrintName = "P890"

SWEP.Class = "Handguns"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Bruen",
    ["Caliber"] = ".45 Auto",
    --["Weight (Loaded)"] = "3.45 kg",
    --["Projectile Weight"] = "62 gr",
    --["Muzzle Velocity"] = "2,986 ft/s",
    --["Muzzle Energy"] = "1,665 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Pacagma/Firmeteran",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = [[For close-quarters situations, the P890 semi-auto pistol takes advantage of accuracy, reliability, and a hard-hitting .45 Auto round. Subsonic Ammo hides kill skulls from the enemy team.]]

SWEP.ViewModel = "models/pacagma/weapons/viewmodel_papa220.mdl"
SWEP.WorldModel = "models/weapons/w_pist_p228.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/pacagma/weapons/viewmodel_papa220.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7.5, 5, -2),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 62 -- Damage done at point blank range
SWEP.DamageMin = 32 -- Damage done at maximum range

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

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 16 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 286

SWEP.Firemodes = {
    {
        Mode = 1,
		PoseParam = 0,
        -- add other attachment modifiers
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 6589132

SWEP.RecoilPatternDrift = 25

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.2

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.85

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilUpSights = 0
SWEP.VisualRecoilSideSights = 0.2

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.4
SWEP.VisualRecoilRoll = 25
SWEP.VisualRecoilSide = 0.5

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 80
SWEP.VisualRecoilDampingConstSights = 80

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
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.4 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.4 -- How long it takes to go from sprinting to being able to fire.

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
    Pos = Vector(-0.6, 5, 2.8),
    Ang = Angle(0, 0, 10),
    Magnification = 1.15,
    ViewModelFOV = 65,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, -1, -1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(-0.8, -0.8, -0.8)
SWEP.MovingAng = Angle(0, 0, -9)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.PeekPos = Vector(-2.5, -8, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 23, 4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

-------------------------- HoldTypes

SWEP.HoldType = "pistol"
SWEP.HoldTypeSprint = "pistol"
SWEP.HoldTypeHolstered = "pistol"
SWEP.HoldTypeSights = "pistol"
SWEP.HoldTypeCustomize = "pistol"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.PistolShellSoundsTable
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_m1911_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/mw22/p890/"

SWEP.ShootSound = "MW22.P890.Fire"
SWEP.ShootSoundIndoor = "MW22.P890.Fire"

SWEP.ShootSoundSilenced = "MW22.P890.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.P890.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol_Alt.Outside"
-- Non-Silenced Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol2.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Sup2.Outside"
-- Silenced Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_mike1911_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_mike1911_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_01",
    [2] = "j_ammo_02",
    [3] = "j_ammo_03",
    [4] = "j_ammo_04",
    [5] = "j_ammo_05",
    [6] = "j_ammo_06",
    [7] = "j_ammo_07",
    [8] = "j_ammo_08",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound =  path .. "wfoly_pi_fire_plr_fcg_01.ogg"
SWEP.TriggerUpSound =  path .. "wfoly_pi_fire_plr_fcg_disconnector_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "weap_papa220_fire_plr_lfe_01.ogg", v = 0.7, l = 70, c = CHAN_ITEM, t = 0},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.9,
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
			{s = path .. "wfoly_pi_papa220_reload_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_papa220_reload_magrelease.ogg", t = 9/30},
			{s = path .. "wfoly_pi_papa220_reload_magout.ogg", t = 17/30},
			{s = path .. "wfoly_pi_papa220_reload_magin.ogg", t = 34/30},
			{s = path .. "wfoly_pi_papa220_reload_maghit.ogg", t = 36/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_end.ogg", t = 45/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.39,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_pi_papa220_reload_empty_raise.ogg", t = 0/30},
            {s = path .. "wfoly_pi_papa220_reload_empty_squeeze.ogg", t = 3/30},
            {s = path .. "wfoly_pi_papa220_reload_empty_magrelease.ogg", t = 6/30},
			{s = path .. "wfoly_pi_papa220_reload_empty_magout.ogg", t = 12/30},
			{s = path .. "wfoly_pi_papa220_reload_empty_maghit.ogg", t = 33/30},
			{s = path .. "wfoly_pi_papa220_reload_empty_magin.ogg", t = 35/30},
            {s = path .. "wfoly_pi_papa220_inspect_slidepull.ogg", t = 36/30},
            {s = path .. "wfoly_pi_papa220_inspect_sliderelease.ogg", t = 45/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.38,
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
			{s = path .. "wfoly_pi_papa220_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_mvmnt.ogg", t = 12/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_magin.ogg", t = 18/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_maghit.ogg", t = 21/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_end.ogg", t = 27/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.4,
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
			{s = path .. "p01_ar_mike4_reload_empty_fast_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_magout.ogg", t = 7/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_magin.ogg", t = 25/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_charge.ogg", t = 33/30},
			{s = path .. "p01_ar_mike4_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.9,
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
			{s = path .. "p01_ar_mike4_reload_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_magout.ogg", t = 21/30},
			{s = path .. "p01_ar_mike4_reload_maghit.ogg", t = 34/30},
			{s = path .. "p01_ar_mike4_reload_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_end.ogg", t = 53/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.39,
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
			{s = path .. "p01_ar_mike4_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_maghit.ogg", t = 31/30},
			{s = path .. "p01_ar_mike4_reload_empty_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_charge.ogg", t = 53/30},
			{s = path .. "p01_ar_mike4_reload_empty_end.ogg", t = 64/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.5,
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
			{s = path .. "wfoly_pi_papa220_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_mvmnt.ogg", t = 12/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_magin.ogg", t = 18/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_maghit.ogg", t = 21/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_end.ogg", t = 27/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.5,
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
			{s = path .. "p01_ar_mike4_reload_empty_fast_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_magout.ogg", t = 7/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_magin.ogg", t = 25/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_charge.ogg", t = 33/30},
			{s = path .. "p01_ar_mike4_reload_empty_end.ogg", t = 47/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.9,
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
			{s = path .. "p01_ar_mike4_reload_xmaglrg_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_magout.ogg", t = 29/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_maghit.ogg", t = 41/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_magin.ogg", t = 51/30},
			{s = path .. "p01_ar_mike4_reload_xmaglrg_end.ogg", t = 78/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.39,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "p01_ar_mike4_reload_empty_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_maghit.ogg", t = 31/30},
			{s = path .. "p01_ar_mike4_reload_empty_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_charge.ogg", t = 53/30},
			{s = path .. "p01_ar_mike4_reload_empty_end.ogg", t = 64/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.5,
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
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_pi_papa220_reload_fast_raise.ogg", t = 0/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_mvmnt.ogg", t = 12/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_magin.ogg", t = 19/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_maghit.ogg", t = 22/30},
			{s = path .. "wfoly_pi_papa220_reload_empty_magin.ogg", t = 28/30},
			{s = path .. "wfoly_pi_papa220_reload_fast_end.ogg", t = 30/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 0.5,
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
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_maghit.ogg", t = 34/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_charge.ogg", t = 52/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmaglrg_end.ogg", t = 62/30},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.7,
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_pi_papa220_raise.ogg", t = 1/30},
            {s = path .. "wfoly_pi_papa220_inspect_slidepull.ogg", t = 6/30},
            {s = path .. "wfoly_pi_papa220_inspect_sliderelease.ogg", t = 15/30},
            {s = path .. "wfoly_pi_papa220_inspect_end.ogg", t = 18/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
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
        },
        EventTable = {
            {s = path .. "wfoly_pi_papa220_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
		--Mult = 0.8,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_pi_papa220_drop.ogg", t = 0/30},
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
		Mult = 2,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 1.5,
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_pi_papa220_inspect_raise.ogg", t = 1/30},
            {s = path .. "wfoly_pi_papa220_inspect_trigger.ogg", t = 17/30},
            {s = path .. "wfoly_pi_papa220_inspect_magout.ogg", t = 45/30},
            {s = path .. "wfoly_pi_papa220_inspect_magin.ogg", t = 78/30},
            {s = path .. "wfoly_pi_papa220_inspect_maghit.ogg", t = 88/30},
            {s = path .. "wfoly_pi_papa220_inspect_rotate.ogg", t = 92/30},
            {s = path .. "wfoly_pi_papa220_inspect_slidepull.ogg", t = 101/30},
            {s = path .. "wfoly_pi_papa220_inspect_sliderelease.ogg", t = 114/30},
            {s = path .. "wfoly_pi_papa220_inspect_triggerpull.ogg", t = 128/30},
            {s = path .. "wfoly_pi_papa220_inspect_end.ogg", t = 140/30},
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 1/30},
        },
    },
	["inspect_xmag"] = {
        Source = "lookat01_xmag",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 1/30},
        },
    },
	["inspect_empty_xmag"] = {
        Source = "lookat01_empty_xmag",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 1/30},
        },
    },
	["inspect_xmaglrg"] = {
        Source = "lookat01_xmaglrg",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 1/30},
        },
    },
	["inspect_empty_xmaglrg"] = {
        Source = "lookat01_empty_xmaglrg",
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
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 1/30},
        },
    },
    ["bash"] = {
        Source = {"melee", "melee2", "melee3"},
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
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

-----------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmaglrg") then 
        return "reload_xmaglrg_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"	
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg"
	elseif anim == "reload_empty" and wep:HasElement("mag_xmaglrg") then
        return "reload_xmaglrg_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
-----------------------------------------------------------------
	elseif anim == "inspect" and wep:HasElement("mag_xmag") then
        return "inspect_xmag"
    elseif anim == "inspect_empty" and wep:HasElement("mag_xmag") then 
        return "inspect_empty_xmag"	
-----------------------------------------------------------------
	elseif anim == "inspect" and wep:HasElement("mag_xmaglrg") then
        return "inspect_xmaglrg"
    elseif anim == "inspect_empty" and wep:HasElement("mag_xmaglrg") then 
        return "inspect_empty_xmaglrg"			
-----------------------------------------------------------------
    end
end

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
	-- local attached = data.elements
    -- if wep:HasElement("sight_m13") then 
	-- model:SetBodygroup(1,2)
	-- model:SetBodygroup(7,2)
	-- elseif wep:HasElement("optic_scope") then
	-- model:SetBodygroup(1,3)
	-- model:SetBodygroup(7,2)
	-- end

    -- local camo = 0
    -- if attached["universal_camo"] then
        -- camo = 1
    -- end
    -- model:SetSkin(camo)
-- end

SWEP.AttachmentElements = {
    ["mags_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["trigger_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
	["grips_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
	["barrels_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Slide",
        DefaultAttName = "Standard slide",
		InstalledElements = {"barrels_none"},
        Category = "mw22_papa220_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer",
		ExcludeElements = {"mw22_papa220_xten_harbinger"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_reflex",
        Pos = Vector(1, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optics_pistols_alt"},
		ExcludeElements = {"mw22_papa220_xten_harbinger"},
        CorrectiveAng = Angle(0, 0, 0),
		--InstalledElements = {"sight_none"},
		Scale = 1,
    },
	{
        PrintName = "Triggers",
		DefaultAttName = "Standard Trigger",
		Bone = "j_trigger",
        Category = {"mw22_papa220_triggers"},
		InstalledElements = {"trigger_none"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
	{
        PrintName = "Grip",
		DefaultAttName = "Standard Grip",
		Bone = "tag_pistolgrip_attach",
        Category = {"mw22_papa220_pistgrip"},
		InstalledElements = {"grips_none"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
	{
        PrintName = "Mags",
		Bone = "j_mag1",
        Category = {"mw22_papa220_mags"},
		InstalledElements = {"mags_none"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
		ExcludeElements = {"mw22_papa220_xten_harbinger"},
        Pos = Vector(1.1, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
}

SWEP.GripPoseParam = 0.4
SWEP.GripPoseParam2 = 0
SWEP.CodAngledGripPoseParam = 26
SWEP.CodStubbyGripPoseParam = 8
SWEP.CodStubbyTallGripPoseParam = 1
--SWEP.CodStubbyTallGripPoseParam = 0