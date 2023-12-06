AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MWII"
SWEP.SubCategory = "Light Machine Guns"

SWEP.PrintName = "SAKIN MG38"

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = "United States",
    ["Manufacturer"] = "ZLR",
    ["Caliber"] = ".338 Norma Magnum",
    ["Weight (Loaded)"] = "10 kg",
    ["Projectile Weight"] = "300 gr",
    ["Muzzle Velocity"] = "3,000 ft/s",
    ["Muzzle Energy"] = "8,130 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Viper/Mushroom/Pacagma/Firmeteran",
    Assets = "Infinity Ward/Valve/New World Interactive"
}
SWEP.Description = [[The belt-fed SAKIN MG38 light machine gun delivers devastating 7.62 rounds at a high fire rate thanks to a short-stroke gas piston.]]

SWEP.ViewModel = "models/weapons/mw22/c_lmg_negev.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/mw22/c_lmg_negev.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-9, 4, -2),
    TPIKAng = Angle(-9, -5, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 37 -- Damage done at point blank range
SWEP.DamageMin = 29 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 15 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 12

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 3000 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.5

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 100 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 652

SWEP.Firemodes = {
    {
        Mode = -1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.6

SWEP.RecoilSeed = 24366

SWEP.RecoilPatternDrift = 55

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.8 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 55 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 2

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.6

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilPunchSights = 55
SWEP.VisualRecoilRollSights = 55
SWEP.VisualRecoilPunch = 4
SWEP.VisualRecoilUp = 0.5
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = 0.3

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
SWEP.RecoilModifierCapSights = 0


SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.05
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5

SWEP.SpreadHook = function(self, orig)
    local rec = self:GetRecoilAmount()
    local maxmult = -0.5 -- minimal ever spread mult after this (0.5 = 2x more accurate after many shots)
    local speedofthis = 0.5 -- per shot multiplier, or just speed
    local minshots = 3 -- minimal amount of shoots to make this thing work
	--print(math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis)))
    
    if rec > minshots then

      return  math.max(orig * maxmult, orig * (1 - (rec - minshots) * speedofthis))
   end
end


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.6 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.4

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.02, -1, 1.4),
    Ang = Angle(0, 0, -2),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(-1, -2, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, 0, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1.2, 0, -0.8)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 40, 5)
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
SWEP.ShellScale = 0.07
SWEP.ShellPhysBox = Vector(1, 1, 1)

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
    [2] = {
        model = "models/weapons/cod2019/shared/lmg_link.mdl",
        smoke = false
    }
}

SWEP.Hook_PrimaryAttack = function(self)

    self:DoEject(1, 2)

    -- if self:Clip1() == self:GetCapacity() then
        -- self:DoEject(2, 2)
    -- end
end


SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/mw22/mags/w_lmg_negev_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_large_drum_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/mw22/negev/"

SWEP.ShootSound = "MW22.NEGEV.Fire"
SWEP.ShootSoundIndoor = "MW22.NEGEV.Fire"

SWEP.ShootSoundSilenced = "MW22.NEGEV.Fire.S"
SWEP.ShootSoundSilencedIndoor = "MW22.NEGEV.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_LMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_LMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/raal/wfoly_lm_slima_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/raal/wfoly_lm_slima_ads_down.ogg"

SWEP.BulletBones = {
    [1] = {"j_ammo_01","j_link_01"},
    [2] = {"j_ammo_02","j_link_02"},
    [3] = {"j_ammo_03","j_link_03"},
    [4] = {"j_ammo_04","j_link_04"},
    [5] = {"j_ammo_05","j_link_05"},
    [6] = {"j_ammo_06","j_link_06"},
    [7] = {"j_ammo_07","j_link_07"},
    [8] = {"j_ammo_08","j_link_08"},
    [9] = {"j_ammo_09","j_link_09"},
    [10] = {"j_ammo_10","j_link_10"},
    [11] = {"j_ammo_11","j_link_11"},
    [12] = {"j_ammo_12","j_link_12"},
    [13] = {"j_ammo_13","j_link_13"},
    [14] = {"j_ammo_14","j_link_14"},
    [15] = {"j_ammo_15","j_link_15"},
    [16] = {"j_ammo_16","j_link_16"},
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

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.1 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/holger/weap_mgolf36_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/holger/weap_mgolf36_disconnector_plr_01.ogg"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
        EventTable = {
			{s = "weapons/mw22/negev/weap_ngolf7_fire_plr_lfe.ogg",v = 0.5, t = 0/30},
        },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 2.9,
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
                t = 0.8,
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
			{s = path .. "wfoley_ngolf7_reload_adjust.ogg", t = 3/30},
			{s = path .. "wfoley_ngolf7_reload_coveropen.ogg", t = 25/30},
			{s = path .. "wfoley_ngolf7_reload_clear_01.ogg", t = 41/30},
			{s = path .. "wfoley_ngolf7_reload_clear_02.ogg", t = 52/30},
			{s = path .. "wfoley_ngolf7_reload_mvmnt.ogg", t = 74/30},
			{s = path .. "wfoley_ngolf7_reload_magout.ogg", t = 79/30},
			{s = path .. "wfoley_ngolf7_reload_adjust.ogg", t = 92/30},
			{s = path .. "wfoley_ngolf7_reload_magin.ogg", t = 115/30},
			{s = path .. "wfoley_ngolf7_reload_maghit.ogg", t = 131/30},
			{s = path .. "wfoley_ngolf7_reload_load.ogg", t = 144/30},
			{s = path .. "wfoley_ngolf7_reload_mvmnt.ogg", t = 162/30},
			{s = path .. "wfoley_ngolf7_reload_coverclose.ogg", t = 186/30},
			{s = path .. "wfoley_ngolf7_reload_end.ogg", t = 200/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
		MinProgress = 0.9,
		DropMagAt = 2.8,
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
                t = 1.15,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoley_ngolf7_reload_empty_down.ogg", t = 2/30},
			{s = path .. "wfoley_ngolf7_reload_empty_charge.ogg", t = 23/30},
			{s = path .. "wfoley_ngolf7_reload_empty_coveropen.ogg", t = 61/30},
			{s = path .. "wfoley_ngolf7_reload_clear_01.ogg", t = 74/30},
			{s = path .. "wfoley_ngolf7_reload_empty_clear_01.ogg", t = 87/30},
			{s = path .. "wfoley_ngolf7_reload_clear_01.ogg", t = 75/30},
			{s = path .. "wfoley_ngolf7_reload_empty_magout.ogg", t = 107/30},
			{s = path .. "wfoley_ngolf7_reload_empty_adjust.ogg", t = 127/30},
			{s = path .. "wfoley_ngolf7_reload_empty_magin.ogg", t = 153/30},
			{s = path .. "wfoley_ngolf7_reload_empty_maghit.ogg", t = 167/30},
			{s = path .. "wfoley_ngolf7_reload_empty_load.ogg", t = 182/30},
			{s = path .. "wfoley_ngolf7_reload_empty_coverclose.ogg", t = 221/30},
			{s = path .. "wfoley_ngolf7_reload_empty_end.ogg", t = 237/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 2.3,
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
                t = 0.8,
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
			{s = path .. "wfoley_ngolf7_reload_down.ogg", t = 5/30},
			{s = path .. "wfoley_ngolf7_reload_coveropen.ogg", t = 21/30},
			{s = path .. "wfoley_ngolf7_reload_clear_01.ogg", t = 33/30},
			{s = path .. "wfoley_ngolf7_reload_clear_02.ogg", t = 36/30},
			{s = path .. "wfoley_ngolf7_reload_magout.ogg", t = 47/30},
			{s = path .. "wfoley_ngolf7_reload_adjust.ogg", t = 65/30},
			{s = path .. "wfoley_ngolf7_reload_magin.ogg", t = 89/30},
			{s = path .. "wfoley_ngolf7_reload_maghit.ogg", t = 93/30},
			{s = path .. "wfoley_ngolf7_reload_load.ogg", t = 105/30},
			{s = path .. "wfoley_ngolf7_reload_coverclose.ogg", t = 137/30},
			{s = path .. "wfoley_ngolf7_reload_end.ogg", t = 150/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		MagSwapTime = 3,
		DropMagAt = 2.5,
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
                t = 0.8,
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
			{s = path .. "wfoley_ngolf7_reload_empty_down.ogg", t = 5/30},
			{s = path .. "wfoley_ngolf7_reload_empty_charge.ogg", t = 20/30},
			{s = path .. "wfoley_ngolf7_reload_empty_coveropen.ogg", t = 53/30},
			{s = path .. "wfoley_ngolf7_reload_mvmnt.ogg", t = 60/30},
			{s = path .. "wfoley_ngolf7_reload_empty_magout.ogg", t = 75/30},
			{s = path .. "wfoley_ngolf7_reload_empty_adjust.ogg", t = 90/30},
			{s = path .. "wfoley_ngolf7_reload_empty_magin.ogg", t = 112/30},
			{s = path .. "wfoley_ngolf7_reload_empty_maghit.ogg", t = 121/30},
			{s = path .. "wfoley_ngolf7_reload_empty_load.ogg", t = 134/30},
			{s = path .. "wfoley_ngolf7_reload_empty_coverclose.ogg", t = 163/30},
			{s = path .. "wfoley_ngolf7_reload_empty_end.ogg", t = 177/30},
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
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoley_ngolf7_raise.ogg", t = 0/30},
            {s = path .. "wfoley_ngolf7_reload_empty_charge.ogg", t = 30/30},
			{s = path .. "wfoley_ngolf7_reload_empty_adjust.ogg", t = 64/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
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
            {s = path .. "wfoley_ngolf7_raise.ogg", t = 0/30},
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
                t = 0.5,
                lhik = 0,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoley_ngolf7_drop.ogg", t = 0/30},
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
		Mult = 2.3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 2.3,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.1,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.3,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.4,
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
            {s = path .. "wfoley_ngolf7_inspect_up.ogg", t = 5/30},
            {s = path .. "wfoley_ngolf7_inspect_down.ogg", t = 85/30},
			{s = path .. "wfoley_ngolf7_inspect_coveropen.ogg", t = 110/30},
			{s = path .. "wfoley_ngolf7_inspect_coverclose.ogg", t = 147/30},
			{s = path .. "wfoley_ngolf7_inspect_rotate.ogg", t = 165/30},
			{s = path .. "wfoley_ngolf7_inspect_end.ogg", t = 233/30},
        },
    },
    ["bash"] = {
        Source = {"melee_hit_01","melee_hit_02","melee_hit_03"},
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

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
    --------------------------------------------------------------------------
    if anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(17, -0.5, -0.9),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 1,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
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
            {1,1},
        },
    },
    ["muzzle_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock_tube_none"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("stock_retract") then model:SetBodygroup(4,1) end
-- end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "mw22_negev_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
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
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(0.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_none"},
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac",
        Bone = "tag_laser_attach",
        Pos = Vector(1.5, 0, 0),
        Ang = Angle(0, 0, 180),
		--InstalledElements = {"rail_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(2, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"rail_grip"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = {"mw22_negev_stock","cod2019_stocks"},
        Bone = "tag_stock_attach",
        Pos = Vector(1.7, 0, 0.05),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock_none"},
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
        Category = "mw22_negev_mag",
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
        Category = "cod2019_skins_m91",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/mw22/stickers/lmg_negev_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
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

SWEP.GripPoseParam = 5
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 2
SWEP.CodStubbyGripPoseParam = 0
SWEP.CodStubbyTallGripPoseParam = 0