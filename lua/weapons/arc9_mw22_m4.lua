AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "M4"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "Tempus Armament",
    ["Caliber"] = "5.56 NATO",
    ["Weight (Loaded)"] = "3.45 kg",
    ["Projectile Weight"] = "62 gr",
    ["Muzzle Velocity"] = "2,986 ft/s",
    ["Muzzle Energy"] = "1,665 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Nekyo-ko/Aidenzappering/Kirloper/Pacagma/Firmeteran",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = [[The flagship rifle of the M4 Platform. This reliable workhorse is a jack-of-all-trades that performs well in most combat scenarios.]]

SWEP.ViewModel = "models/weapons/mw22/c_rif_m4.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_rif_m4.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-7.5, 5, -2),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 18 -- Damage done at maximum range

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

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 824

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 1,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
		PoseParam = 0,
        -- add other attachment modifiers
    }
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
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 2
SWEP.RecoilModifierCapMove = 0.5
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.04
SWEP.SpreadAddCrouch = -0.03
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
    Pos = Vector(-2.9, -5.5, 0.5),
    Ang = Angle(0, 0, 2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, -1, 0)
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

SWEP.PeekPos = Vector(-1, 1, -3.5)
SWEP.PeekAng = Angle(0, 0, -45)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

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
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_m4_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

local path = "weapons/mw22/m4/"

SWEP.ShootSound = "MW22.M4A1.Fire"
SWEP.ShootSoundIndoor = "MW22.M4A1.Fire"

SWEP.ShootSoundSilenced = "COD2019.M4A1.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.M4A1.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR3.Outside"
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

SWEP.EnterSightsSound = path .. "wfoly_ar_mike4_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_ar_mike4_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet_01",
    [2] = "j_bullet_02",
    [3] = "j_bullet_03",
    [4] = "j_bullet_04",
    [5] = "j_bullet_05",
    [6] = "j_bullet_06",
    [7] = "j_bullet_07",
    [8] = "j_bullet_08",
    [9] = "j_bullet_09",
    [10] = "j_bullet_11",
    [11] = "j_bullet_12",
    [12] = "j_bullet_13",
    [13] = "j_bullet_14",
    [14] = "j_bullet_15",
    [15] = "j_bullet_16",
    [16] = "j_bullet_17",
    [17] = "j_bullet_18",
    [18] = "j_bullet_19",
    [19] = "j_bullet_20",
    [20] = "j_bullet_21",
    [21] = "j_bullet_22",
    [22] = "j_bullet_23",
    [23] = "j_bullet_23",
    [24] = "j_bullet_24",
    [25] = "j_bullet_25",
    [26] = "j_bullet_26",
    [27] = "j_bullet_27",
    [28] = "j_bullet_28",
    [29] = "j_bullet_29",
    [30] = "j_bullet_30",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/m13/weap_mcharlie_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/m4a1/weap_mike4_fire_plr_disconnector_01.ogg"

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
    },
    ["reload"] = {
        Source = "reload_short",
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
			{s = path .. "p01_ar_mike4_reload_magout.ogg", t = 23/30},
			{s = path .. "p01_ar_mike4_reload_maghit.ogg", t = 31/30},
			{s = path .. "p01_ar_mike4_reload_magin.ogg", t = 37/30},
			{s = path .. "p01_ar_mike4_reload_end.ogg", t = 57/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_empty_maghit.ogg", t = 34/30},
			{s = path .. "p01_ar_mike4_reload_empty_magin.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_charge.ogg", t = 53/30},
            {s = path .. "p01_ar_mike4_reload_empty_end.ogg", t = 54/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_fast_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_fast_magout.ogg", t = 8/30},
            {s = path .. "p01_ar_mike4_reload_fast_end.ogg", t = 20/30},
			{s = path .. "p01_ar_mike4_reload_fast_magin.ogg", t = 24/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_empty_fast_magin.ogg", t = 27/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_charge.ogg", t = 36/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_end.ogg", t = 43/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
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
			{s = path .. "p01_ar_mike4_reload_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_xmag_magout.ogg", t = 24/30},
			{s = path .. "p01_ar_mike4_reload_xmag_maghit.ogg", t = 37/30},
			{s = path .. "p01_ar_mike4_reload_xmag_magin.ogg", t = 43/30},
			{s = path .. "p01_ar_mike4_reload_xmag_end.ogg", t = 59/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_empty_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_magout.ogg", t = 8/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_maghit.ogg", t = 40/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_magin.ogg", t = 46/30},
            {s = path .. "p01_ar_mike4_reload_empty_xmag_end.ogg", t = 49/30},
			{s = path .. "p01_ar_mike4_reload_empty_xmag_charge.ogg", t = 60/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_fast_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmag_magout.ogg", t = 11/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmag_magin.ogg", t = 28/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmag_end.ogg", t = 20/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_magout.ogg", t = 7/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_magin.ogg", t = 25/30},
            {s = path .. "p01_ar_mike4_reload_empty_fast_xmag_end.ogg", t = 30/30},
			{s = path .. "p01_ar_mike4_reload_empty_fast_xmag_charge.ogg", t = 33/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
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
		MinProgress = 0.8,
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
		MinProgress = 0.8,
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
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_lift.ogg", t = 0/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_magout.ogg", t = 10/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_maghit.ogg", t = 37/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_magin.ogg", t = 42/30},
			{s = path .. "p01_ar_mike4_reload_fast_xmaglrg_end.ogg", t = 53/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.8,
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
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 1/30},
            {s = path .. "p01_ar_mike4_inspect_boltpull.ogg", t = 12/30},
            {s = path .. "p01_ar_mike4_reload_end.ogg", t = 30/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
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
        },
        EventTable = {
            {s = path .. "p01_ar_mike4_raise.ogg", t = 0/30},
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
            {s = path .. "p01_ar_mike4_drop_quick.ogg", t = 0/30},
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
			{s = path .. "p01_ar_mike4_reload_magout.ogg", t = 19/30},
			{s = path .. "p01_ar_mike4_reload_maghit.ogg", t = 52/30},
			{s = path .. "p01_ar_mike4_reload_magin.ogg", t = 60/30},
			{s = path .. "p01_ar_mike4_inspect_rotate.ogg", t = 71/30},
			{s = path .. "p01_ar_mike4_inspect_boltpull.ogg", t = 87/30},
			{s = path .. "p01_ar_mike4_inspect_boltclose.ogg", t = 110/30},
			{s = path .. "p01_ar_mike4_inspect_hit.ogg", t = 119/30},
			{s = path .. "p01_ar_mike4_inspect_end.ogg", t = 131/30},
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
    ["firemode_1"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_ar_mike4_selector_off.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_ar_mike4_selector_on.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "p01_ar_mike4_inspect_lift.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

-----------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_extend") then
        return "reload_xmaglrg_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_extend") then 
        return "reload_xmaglrg_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_extend") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_extend") then 
        return "reload_xmag_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
-----------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(15.8, -0.6, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0.7, 0, 0),
    },
    ["cod2019_grips_alt_cclamp"] = {
	ModelOffset = Vector(-1, -0.1, 0.8),
	ModelAngleOffset = Angle(0, 0, 180),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(2, 19, -1.3),
        Ang = Angle(0, 0, -45),
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
        Pos = Vector(2, 19, -1.3),
        Ang = Angle(0, 0, -45),
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
        Pos = Vector(2, 19, -1.3),
        Ang = Angle(0, 0, -45),
        ViewModelFOV = 54,
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
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["pistol_grip_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["sight_rear_folded"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["sight_front_folded"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["sight_rear_off"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["sight_front_off"] = {
        Bodygroups = {
            {6,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["stock_main_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
}

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

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "mw22_m4_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(2, 0, -1),
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_sights_m4"},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_rear_folded","sight_front_folded"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, -1.15),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(6.7, 0.97, -2.5),
        Ang = Angle(0, 0, -90),
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = {"cod2019_grip","cod2019_grip_cclamp"},
        Bone = "tag_grip_attach",
        Pos = Vector(-1, 0, -1.5),
        Ang = Angle(0, 0, 180),
		Scale = 1,
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_tube"},
        Bone = "tag_stock_attach",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none","stock_main_none"},
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
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_burst"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_m4",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_m4_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_sling",
        Pos = Vector(3.5, -1.2, -0.5),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_sling",
        Pos = Vector(2, -1.3, 0.55),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 0.4
SWEP.GripPoseParam2 = 0
SWEP.CodAngledGripPoseParam = 26
SWEP.CodStubbyGripPoseParam = 8
SWEP.CodStubbyTallGripPoseParam = 1
--SWEP.CodStubbyTallGripPoseParam = 0