AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "FJX Imperium"

SWEP.Class = "Sniper Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "United Kingdom",
    ["Manufacturer"] = "FJX",
    ["Caliber"] = ".408 PACE",
    ["Weight (Loaded)"] = "13 kg",
    ["Projectile Weight"] = "290 gr",
    ["Muzzle Velocity"] = "2,953 ft/s",
    ["Muzzle Energy"] = "7,615 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Pacagma/Firmeteran",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = [[Engineered destruction at its finest, this anti-personnel, bolt-action sniper rifle intervenes in tense situations with hard-hitting .408 rounds.]]

SWEP.ViewModel = "models/weapons/mw22/c_snip_imperium.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_snip_imperium.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-11, 6, -2.5),
    Ang = Angle(-17, 3, 180),
    TPIKPos = Vector(-6, 6, -2),
    TPIKAng = Angle(-9, 0, 170),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 94 -- Damage done at point blank range
SWEP.DamageMin = 54 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 11000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2799 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 2.5

-------------------------- MAGAZINE

SWEP.Ammo = "SniperPenetratedRound" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

SWEP.ManualAction = true
SWEP.NoLastCycle = true
SWEP.ManualActionNoLastCycle = true

--SWEP.ShotgunReload = true
--SWEP.ManualActionChamber = 1

SWEP.BarrelLength = 20

-------------------------- FIREMODES

SWEP.RPM = 150

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 0 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 0
SWEP.RecoilResetTime = 1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.
SWEP.RecoilAutoControlSights = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 1
SWEP.RecoilMultSights = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.5

SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 25
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.2

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch * 9999
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.0002 -- Applied per unit of recoil.

SWEP.SpreadMultMove = 2.5
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5

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
    Pos = Vector(-3.665, -3.5, 0.65),
    Ang = Angle(0, 0, -2),
    Magnification = 1.1,
    ViewModelFOV = 56,
    CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(-2.5, 0, 2.5)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1.2, -1.2, -1.2)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(0, -2, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 40, 3)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

SWEP.PeekPos = Vector(-1, 1.5, -5)
SWEP.PeekAng = Angle(0, 0.4, -45)

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

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_rytec.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.9
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0.4

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_snip_hdr_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 1.6
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/ax50/"
local path2 = "weapons/mw22/imperium/"

SWEP.ShootSound = "MW22.Imperium.Fire"
SWEP.ShootSoundIndoor = "MW22.Imperium.Fire"

SWEP.ShootSoundSilenced = "MW22.Imperium.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.Imperium.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "layer_Sniper.Outside"
SWEP.DistantShootSound = "distant_Sniper.Outside"
-- Inside
SWEP.LayerSoundIndoor = "layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "distant_Shotgun.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "layer_Sniper.Outside"
SWEP.DistantShootSoundSilenced = "distant_Sniper_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "distant_DMR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sn_alpha50_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sn_alpha50_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/svd/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/svd/weap_delta_disconnector_plr_01.ogg"

SWEP.HideBones  = {
    [1] = "j_mag2",
}

function SWEP:PrimaryAttack()
    local clip = self:Clip1()
    weapons.Get(self.Base).PrimaryAttack(self)
    if (clip != self:Clip1()) then
        self:MakeEnvironmentDust(150)
    end
end

SWEP.Animations = {
    ["fire"] = {
        Source = "fire",
    },
    ["cycle"] = {
        Source = "fire_rechamber",
		--EjectAt = 0.2,
		MinProgress = 0.8,
        EventTable = {
            {s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 8/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 20/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
		DropMagAt = 1.4,
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
			{s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 5/30},
			{s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 33/30},
			{s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 60/30},
			{s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 80/30},
			{s = path2 .. "p21_sn_mromeo_reload_end.ogg", t = 95/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.9,
		EjectAt = 0.35,
		DropMagAt = 1.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.23,
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
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 5/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 26/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magout.ogg", t = 57/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 85/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magin.ogg", t = 102/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle2.ogg", t = 117/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 125/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 137/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
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
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 2/30},
			{s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 11/30},
			{s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 15/30},
			{s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 45/30},
			{s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 60/30},
			{s = path2 .. "p21_sn_mromeo_reload_end.ogg", t = 70/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		EjectAt = 0.35,
		DropMagAt = 1.55,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.23,
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
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 8/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 27/30},
			{s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 33/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magout.ogg", t = 38/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle2.ogg", t = 65/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magin.ogg", t = 83/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 101/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 108/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 101/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
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
			{s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 5/30},
			{s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 33/30},
			{s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 60/30},
			{s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 80/30},
			{s = path2 .. "p21_sn_mromeo_reload_end.ogg", t = 95/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_empty_xmag",
		MinProgress = 0.9,
		EjectAt = 0.35,
		DropMagAt = 1.9,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.23,
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
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 5/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 26/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magout.ogg", t = 57/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 85/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magin.ogg", t = 102/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle2.ogg", t = 117/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 125/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 137/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		DropMagAt = 1.55,
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
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 2/30},
			{s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 11/30},
			{s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 15/30},
			{s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 45/30},
			{s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 60/30},
			{s = path2 .. "p21_sn_mromeo_reload_end.ogg", t = 70/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_empty_xmag_fast",
		MinProgress = 0.9,
		EjectAt = 0.35,
		DropMagAt = 1.55,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.23,
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
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 8/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 27/30},
			{s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 33/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magout.ogg", t = 38/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle2.ogg", t = 65/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_magin.ogg", t = 83/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 101/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 108/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 101/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 7/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 7/30},
			{s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 18/30},
			{s = path2 .. "p21_sn_mromeo_reload_end.ogg", t = 33/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 0/30},
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
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
        },
        EventTable = {
            {s = path2 .. "p21_sn_mromeo_reload_end.ogg", t = 0/30},
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
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.55,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 0/30},
            {s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 10/30},
            {s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 113/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 148/30},
            {s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 180/30},
            {s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 195/30},
            {s = path2 .. "p21_sn_mromeo_reload_rotate.ogg", t = 213/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 243/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 272/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 291/30},
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
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.55,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 0/30},
            {s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 10/30},
            {s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 113/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 148/30},
            {s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 180/30},
            {s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 195/30},
            {s = path2 .. "p21_sn_mromeo_reload_rotate.ogg", t = 213/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 243/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 272/30},
            {s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 291/30},
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
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.3,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.55,
                lhik = 1,
                rhik = 1
            },
        },
        -- EventTable = {
            -- {s = path2 .. "p21_sn_mromeo_reload_empty_grab.ogg", t = 0/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_raise.ogg", t = 10/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_magout.ogg", t = 113/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_empty_rattle.ogg", t = 148/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_rattle.ogg", t = 180/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_magin.ogg", t = 195/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_rotate.ogg", t = 213/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_empty_boltback.ogg", t = 243/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_empty_boltclose.ogg", t = 272/30},
            -- {s = path2 .. "p21_sn_mromeo_reload_empty_end.ogg", t = 291/30},
        -- },
    },
    ["bash"] = {
        Source = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
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
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_extend") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_extend") then 
        return "reload_xmag_fast_empty"
    --------------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then
        return "reload_xmag_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_xmag") then 
        return "reload_xmag_fast_empty"
    elseif anim == "inspect" and wep:HasElement("mag_xmag") then
        return "inspect_xmag"
    --------------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_extend") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_extend") then 
        return "reload_xmag_empty"
    --------------------------------------------------------------------------------
    elseif anim == "inspect" and wep:HasElement("mag_extend") then
        return "inspect_xmag"
    --------------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_xmag") then
        return "reload_xmag"
    elseif anim == "reload_empty" and wep:HasElement("mag_xmag") then 
        return "reload_xmag_empty"
    elseif anim == "inspect" and wep:HasElement("mag_xmag") then
        return "inspect_xmag"
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(17, -0.85, -0.04),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 1,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    ["csgo_cod2019_laser_01"] = {
    Sights = {
    {
        Pos = Vector(3, 20, -2),
        Ang = Angle(0, 0, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["csgo_cod2019_laser_02"] = {
    Sights = {
    {
        Pos = Vector(-2.5, 20, -1),
        Ang = Angle(-0.1, -0.2, 45),
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
        Pos = Vector(3, 20, -2),
        Ang = Angle(0, 0, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["bipod_none"] = {
        Bodygroups = {
            {1,2},
        },
    },
    ["mag_extend"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["bolt_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["guard_none"] = {
        Bodygroups = {
            {8,1},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {9,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {9,2},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then 
	model:SetBodygroup(9,1)
	end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "mw22_imperium_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(-0.23, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = "Optics",
        Bone = "tag_scope",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic","cod2019_optic_ax50"},
        CorrectiveAng = Angle(0, 0, 0),
		--InstalledElements = {""},
		--Installed = "cod2019_optic_scope_ax50",
        --Integral = "cod2019_optic_scope_ax50",
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-2.5, -0.5, 0),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"mw22_imperium_stock","stock_retract"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"",""},
		Scale = 1,
    },
    {
        PrintName = "Guard",
        DefaultAttName = "Default",
        Category = "mw22_imperium_guard",
        Bone = "tag_sling",
        Pos = Vector(16, 0, -1.1),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {""},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo","cod2019_ammo_sniper"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag","mw22_imperium_mag"},
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
        Category = "mw22_imperium_skins",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/snip_imperium_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/snip_imperium_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/snip_imperium_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
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

SWEP.GripPoseParam = 4
SWEP.CodAngledGripPoseParam = 4.5
SWEP.CodStubbyGripPoseParam = 2
SWEP.GripPoseParam2 = 0.5