AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
--SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = ARC9:GetPhrase("mw22_category_weapon_sniper") or "Sniper Rifles"
SWEP.ARC9WeaponCategory = 5

SWEP.PrintName = ARC9:GetPhrase("mw22_weapon_imperium") or "FJX Imperium"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_sniper") or "Sniper Rifle"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_usa"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw22_manufacturer_fjx"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw22_caliber_408c"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 14, 14 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 305),
}

SWEP.Credits = {
    Author = "ARC9 MW2022 Team",
    Assets = "Infinity Ward/Sledgehammer Games/Activision"
}

SWEP.Description = ARC9:GetPhrase("mw22_weapon_imperium_desc") or [[Engineered destruction at its finest, this anti-personnel, bolt-action sniper rifle intervenes in tense situations with hard-hitting .408 rounds.]]

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
    TPIKPos = Vector(-8, 6, -4),
    TPIKAng = Angle(-9, 0, 170),
    Scale = 1,
	
	TPIKPosSightOffset = Vector(1, 1.5, -2),
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 94 -- Damage done at point blank range
SWEP.DamageMin = 54 -- Damage done at maximum range

SWEP.Num = 1

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 70 / ARC9.HUToM -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 71 / ARC9.HUToM -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.5

SWEP.ImpactForce = 15

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 780 / ARC9.HUToM
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
--SWEP.RecoilAutoControlSights = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 4

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 1
SWEP.RecoilMultSights = 1

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPunchSights = 20
SWEP.VisualRecoilRollSights = 15
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.5
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

SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadMultMove = 2.5
SWEP.SpreadAddMidAir = 0.03
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- AIM ASSIST

SWEP.NoAimAssist = true

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
    Pos = Vector(-4, -3.5, 0.7),
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
SWEP.CustomizePos = Vector(21, 45, 3.5)
SWEP.CustomizeRotateAnchor = Vector(20, -4, -3)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(0, 15, 3)

SWEP.PeekPos = Vector(-1, 1.5, -5)
SWEP.PeekAng = Angle(0, 0.4, -45)

SWEP.PeekMaxFOV = 64

SWEP.PeekPosReloading = Vector(0, 2, -2)
SWEP.PeekAngReloading = Angle(-0.3, 0, -10)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeNPC = "shotgun"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.AfterShotParticle = "barrel_smoke"
SWEP.TracerEffect = "cod2019_tracer_fast"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/mw22/shared/shell_408c.mdl"
SWEP.ShellCorrectAng = Angle(0, -90, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0.5
SWEP.ShellSounds = ARC9.COD2019_50bmg_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/mw22/mags/w_snip_imperium_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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
SWEP.DropMagazineAng = Angle(0, -90, -90)

-------------------------- SOUNDS
SWEP.ShootVolume = 167

local path = ")weapons/mw22/imperium/"

SWEP.ShootSound = "MW22.Imperium.Fire"
SWEP.ShootSoundIndoor = "MW22.Imperium.Fire"

SWEP.ShootSoundSilenced = "MW22.Imperium.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.Imperium.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Sniper.Outside"
SWEP.DistantShootSound = "Distant_Sniper8.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Sniper.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Sniper.Inside3"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Sniper_Sup.Outside7"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Sniper_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = ")weapons/cod2019/wfoly_sn_alpha50_ads_up.ogg"
SWEP.ExitSightsSound = ")weapons/cod2019/wfoly_sn_alpha50_ads_down.ogg"

SWEP.TriggerDelay = 0.03 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.03 -- Time until weapon fires.

SWEP.TriggerDownSound = ")weapons/cod2019/weap_delta_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = ")weapons/cod2019/weap_delta_disconnector_plr_01.ogg"

SWEP.BulletBones = {
    [1] = "j_ammo_02",
    [2] = "j_ammo_03",
	[3] = "j_ammo_04",
	[4] = "j_ammo_05",
	[5] = "j_ammo_06",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "j_mag2",
    },
    [2] = {
        "j_mag2",
        "j_mag1",
		"j_follower",
		"j_ammo_02",
		"j_ammo_03",
		"j_ammo_04",
		"j_ammo_05",
		"j_ammo_06",
    }
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
            {s = path .. "p53_sn_india_fire_rechamber_boltmvmnt.ogg", t = 8/30},
			{s = path .. "p53_sn_india_fire_rechamber_boltopen.ogg", t = 11/30},
			{s = path .. "p53_sn_india_fire_rechamber_boltclose.ogg", t = 21/30},
			{s = path .. "p53_sn_india_fire_rechamber_end.ogg", t = 23/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.675,
		MagSwapTime = 1.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_raise.ogg", t = 3/30},
			{s = path .. "p53_sn_india_reload_magout.ogg", t = 27/30},
			{s = path .. "p53_sn_india_reload_magsweet.ogg", t = 48/30},
			{s = path .. "p53_sn_india_reload_maghit.ogg", t = 75/30},
			{s = path .. "p53_sn_india_reload_magin.ogg", t = 86/30},
			{s = path .. "p53_sn_india_reload_over.ogg", t = 90/30},
			{s = path .. "p53_sn_india_reload_end.ogg", t = 108/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.8},
			{hide = 1, t = 2.1},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.85,
		EjectAt = 0.5,
		MagSwapTime = 2.7,
		DropMagAt = 2.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.23, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_empty_boltopen.ogg", t = 7/30},
			{s = path .. "p53_sn_india_reload_empty_mvmnt1.ogg", t = 11/30},
			{s = path .. "p53_sn_india_reload_empty_mvmnt2.ogg", t = 18/30},
			{s = path .. "p53_sn_india_reload_empty_raise.ogg", t = 33/30},
			{s = path .. "p53_sn_india_reload_empty_magout.ogg", t = 55/30},
			{s = path .. "p53_sn_india_reload_empty_magthrow.ogg", t = 71/30},
			{s = path .. "p53_sn_india_reload_empty_maghit.ogg", t = 101/30},
			{s = path .. "p53_sn_india_reload_empty_magin.ogg", t = 109/30},
			{s = path .. "p53_sn_india_reload_empty_mvmnt3.ogg", t = 119/30},
			{s = path .. "p53_sn_india_reload_empty_boltgrab.ogg", t = 123/30},
			{s = path .. "p53_sn_india_reload_empty_boltclose.ogg", t = 124/30},
			{s = path .. "p53_sn_india_reload_empty_boltlock.ogg", t = 130/30},
			{s = path .. "p53_sn_india_reload_empty_mvmnt4.ogg", t = 130/30},
			{s = path .. "p53_sn_india_reload_empty_end.ogg", t = 144/30},
			{hide = 1, t = 0},
			{hide = 2, t = 2.6},
			{hide = 1, t = 2.95},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.675,
		MagSwapTime = 1.3,
		DropMagAt = 1.25,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_fast_raise.ogg", t = 7/30},
			{s = path .. "p53_sn_india_reload_fast_magoui.ogg", t = 25/30},
			{s = path .. "p53_sn_india_reload_fast_maghit.ogg", t = 56/30},
			{s = path .. "p53_sn_india_reload_fast_magin.ogg", t = 66/30},
			{s = path .. "p53_sn_india_reload_fast_mvmnt.ogg", t = 67/30},
			{s = path .. "p53_sn_india_reload_fast_end.ogg", t = 77/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.25},
			{hide = 1, t = 1.6},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.85,
		EjectAt = 0.55,
		MagSwapTime = 2.1,
		DropMagAt = 2.05,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.23, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_fast_empty_boltopen.ogg", t = 8/30},
			{s = path .. "p53_sn_india_reload_fast_empty_raise.ogg", t = 33/30},
			{s = path .. "p53_sn_india_reload_fast_empty_magout.ogg", t = 50/30},
			{s = path .. "p53_sn_india_reload_fast_empty_maghit.ogg", t = 83/30},
			{s = path .. "p53_sn_india_reload_fast_empty_magin.ogg", t = 92/30},
			{s = path .. "p53_sn_india_reload_fast_empty_lower.ogg", t = 93/30},
			{s = path .. "p53_sn_india_reload_fast_empty_boltforward.ogg", t = 109/30},
			{s = path .. "p53_sn_india_reload_fast_empty_boltlock.ogg", t = 115/30},
			{s = path .. "p53_sn_india_reload_fast_empty_end.ogg", t = 118/30},
			{hide = 1, t = 0},
			{hide = 2, t = 2.05},
			{hide = 1, t = 2.43},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.7,
		MagSwapTime = 1.9,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_xmag_raise.ogg", t = 9/30},
			{s = path .. "p53_sn_india_reload_xmag_magreleased.ogg", t = 33/30},
			{s = path .. "p53_sn_india_reload_xmag_mvmnt1.ogg", t = 34/30},
			{s = path .. "p53_sn_india_reload_xmag_magout.ogg", t = 47/30},
			{s = path .. "p53_sn_india_reload_xmag_magsweet.ogg", t = 47/30},
			{s = path .. "p53_sn_india_reload_xmag_maghit.ogg", t = 86.5/30},
			{s = path .. "p53_sn_india_reload_xmag_magin.ogg", t = 93.5/30},
			{s = path .. "p53_sn_india_reload_xmag_mvmnt2.ogg", t = 97/30},
			{s = path .. "p53_sn_india_reload_xmag_end.ogg", t = 104/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.8},
			{hide = 1, t = 2.1},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.85,
		EjectAt = 0.5,
		MagSwapTime = 2.7,
		DropMagAt = 2.6,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.23, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_xmag_empty_boltopen.ogg", t = 6/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_mvmnt1.ogg", t = 11/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_raise.ogg", t = 34/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_mvmnt2.ogg", t = 56/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_magout.ogg", t = 66/30},
			{s = path .. "p53_sn_india_reload_xmag_maghit.ogg", t = 102/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_maghit.ogg", t = 113/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_magin.ogg", t = 118/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_boltclose.ogg", t = 136/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_boltlocked.ogg", t = 142/30},
			{s = path .. "p53_sn_india_reload_xmag_empty_end.ogg", t = 145/30},
			{hide = 1, t = 0},
			{hide = 2, t = 2.6},
			{hide = 1, t = 2.95},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.7,
		MagSwapTime = 1.4,
		DropMagAt = 1.3,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_xmag_fast_raise.ogg", t = 2/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_magout.ogg", t = 27/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_magsweet.ogg", t = 53/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_maghit1.ogg", t = 65/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_maghit2.ogg", t = 75/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_magin.ogg", t = 77/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_mvmnt.ogg", t = 83/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_end.ogg", t = 88/30},
			{hide = 1, t = 0},
			{hide = 2, t = 1.3},
			{hide = 1, t = 1.65},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.875,
		EjectAt = 0.55,
		MagSwapTime = 2.1,
		DropMagAt = 2.075,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.23, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_mvmnt.ogg", t = 4/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_boltopen.ogg", t = 10/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_raise.ogg", t = 33/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_magout.ogg", t = 51/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_mvmnt.ogg", t = 74/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_maghit.ogg", t = 84/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_magin.ogg", t = 103/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_lower.ogg", t = 107/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_boltclose.ogg", t = 121/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_boltlock.ogg", t = 127/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_mvmnt2.ogg", t = 128/30},
			{s = path .. "p53_sn_india_reload_xmag_fast_empty_end.ogg", t = 135/30},
			{hide = 1, t = 0},
			{hide = 2, t = 2.075},
			{hide = 1, t = 2.45},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p53_sn_india_first_raise_up.ogg", t = 0/30},
			{s = path .. "p53_sn_india_first_raise_boltopen.ogg", t = 1/30},
			{s = path .. "p53_sn_india_first_raise_boltclose.ogg", t = 18/30},
			{s = path .. "p53_sn_india_first_raise_end.ogg", t = 31/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.7,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p53_sn_india_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.3, lhik = 0, rhik = 0 },
        },
        EventTable = {
            {s = path .. "p53_sn_india_first_drop.ogg", t = 0/30},
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
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p53_sn_india_inspect_raise.ogg", t = 1/30},
            {s = path .. "p53_sn_india_inspect_magout.ogg", t = 111/30},
            {s = path .. "p53_sn_india_inspect_magsweet.ogg", t = 112/30},
            {s = path .. "p53_sn_india_inspect_maghit.ogg", t = 186/30},
            {s = path .. "p53_sn_india_inspect_magin.ogg", t = 197/30},
            {s = path .. "p53_sn_india_inspect_rotate.ogg", t = 205/30},
            {s = path .. "p53_sn_india_inspect_boltopen.ogg", t = 245/30},
            {s = path .. "p53_sn_india_inspect_boltclose.ogg", t = 275/30},
            {s = path .. "p53_sn_india_inspect_end.ogg", t = 289/30},
        },
    },
    ["inspect_xmag"] = {
        Source = "lookat01_xmag",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p53_sn_india_inspect_xmag_raise.ogg", t = 1/30},
            {s = path .. "p53_sn_india_inspect_xmag_magout.ogg", t = 111/30},
            {s = path .. "p53_sn_india_inspect_xmag_mvmnt.ogg", t = 112/30},
            {s = path .. "p53_sn_india_inspect_xmag_maghit.ogg", t = 186/30},
            {s = path .. "p53_sn_india_inspect_xmag_magin.ogg", t = 197/30},
            {s = path .. "p53_sn_india_inspect_xmag_rotate.ogg", t = 205/30},
            {s = path .. "p53_sn_india_inspect_xmag_boltopen.ogg", t = 245/30},
            {s = path .. "p53_sn_india_inspect_xmag_boltclose.ogg", t = 275/30},
            {s = path .. "p53_sn_india_inspect_xmag_end.ogg", t = 289/30},
        },
    },
    ["inspect_empty"] = {
        Source = "lookat01_empty",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.3, lhik = 0, rhik = 0 },
            { t = 0.55, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "p53_sn_india_inspect_empty_raise.ogg", t = 2/30},
            {s = path .. "p53_sn_india_inspect_empty_mvmnt1.ogg", t = 52/30},
            {s = path .. "p53_sn_india_inspect_empty_mvmnt2.ogg", t = 97/30},
            {s = path .. "p53_sn_india_inspect_empty_rotate.ogg", t = 130/30},
            {s = path .. "p53_sn_india_inspect_empty_casingshand.ogg", t = 180/30},
            {s = path .. "p53_sn_india_inspect_empty_end.ogg", t = 245/30},
        },
    },
    ["bash"] = {
        Source = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 1, rhik = 1 },
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

--- 7 Round Mags ---

local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
	["inspect"] = "inspect_xmag",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
	["inspect"] = "inspect_xmag",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}
--local Translate_TacSprint = {
--    ["idle_sprint"] = "super_sprint_idle",
--    ["enter_sprint"] = "super_sprint_in",
--    ["exit_sprint"] = "super_sprint_out",
--}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
--    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmag = wep:HasElement("mag_xmag")
	local magex = wep:HasElement("mag_extend")

--    if super_sprint and Translate_TacSprint[anim] then
--        return Translate_TacSprint[anim]
--    end

    if magex and speedload and Translate_XMag_Fast[anim] then
        return Translate_XMag_Fast[anim]
    elseif magex and Translate_XMag[anim] then
        return Translate_XMag[anim]
--    elseif super_sprint and Translate_TacSprint[anim] then
--        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
        end
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
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle",
		DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
        Bone = "tag_silencer",
        Pos = Vector(-0.23, 0.18, -0.03),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "mw22_imperium_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(-2.5, -0.5, 0),
        Ang = Angle(0, 0, -90),
		--InstalledElements = {"rail_laser"},
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
        Category = {"cod2019_optic","mw22_optic_imperium"},
        Bone = "tag_scope",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0),
		--InstalledElements = {""},
		Installed = "mw22_optic_default_imperium",
        Integral = "mw22_optic_default_imperium",
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"mw22_imperium_stock","stock_retract"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"",""},
		Scale = 1,
    },
    { -- 6
        PrintName = "Guard",
        DefaultAttName = "Default",
        Category = "mw22_imperium_guard",
        Bone = "tag_sling",
        Pos = Vector(16, 0, -1.1),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		--InstalledElements = {""},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "j_mag1",
        Category = {"cod2019_mag","mw22_imperium_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "j_mag1",
        Category = {"cod2019_ammo","cod2019_ammo_sniper"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
		DefaultIcon = Material("entities/defattachs/reargrip-ar.png", "mips smooth"),
        Category = "mw22_imperium_grip",
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(-1.5, 0, -2),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh"},
        Bone = "tag_pistolgrip_attach",
        Pos = Vector(2, 0, -1.5),
    },

	-- Cosmetics
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "mw22_imperium_skins",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/snip_imperium_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/snip_imperium_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/mw22/stickers/snip_imperium_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
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