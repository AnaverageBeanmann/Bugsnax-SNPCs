AddCSLuaFile("shared.lua")
include("vj_base/ai/core.lua")
include("vj_base/ai/schedules.lua")
include("vj_base/ai/move_aa.lua")
include("shared.lua")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.Model = {"models/vj_bugsnax/strabby.mdl"}
ENT.StartHealth = 15
ENT.HullType = HULL_TINY
ENT.SightDistance = 300
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.CanOpenDoors = false
ENT.VJ_NPC_Class = {"CLASS_BUGSNAX"}
ENT.Behavior = VJ_BEHAVIOR_PASSIVE
ENT.CallForHelp = false
ENT.CanInvestigate = false
ENT.CallForBackupOnDamage = false
ENT.BringFriendsOnDeath = false
ENT.HasDeathAnimation = true
ENT.AnimTbl_Death = {ACT_IDLE_HURT}
ENT.DeathAnimationTime = 2
ENT.HasDeathRagdoll = false

ENT.Bugsnax_WeRanTouchStuffAlready = false
ENT.Bugsnax_NextBlinkTime = 0

ENT.FootSteps = {
	[MAT_ANTLION] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_BLOODYFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_CONCRETE] = {
		"fx/footsteps/zombie_footstep_m_01.wav",
		"fx/footsteps/zombie_footstep_m_02.wav",
		"fx/footsteps/zombie_footstep_m_03.wav",
	},
	[MAT_DIRT] = {
		"player/footsteps/dirt1.wav",
		"player/footsteps/dirt2.wav",
		"player/footsteps/dirt3.wav",
		"player/footsteps/dirt4.wav",
	},
	[MAT_FLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[MAT_GRATE] = {
		"player/footsteps/metalgrate1.wav",
		"player/footsteps/metalgrate2.wav",
		"player/footsteps/metalgrate3.wav",
		"player/footsteps/metalgrate4.wav",
	},
	[MAT_ALIENFLESH] = {
		"physics/flesh/flesh_impact_hard1.wav",
		"physics/flesh/flesh_impact_hard2.wav",
		"physics/flesh/flesh_impact_hard3.wav",
		"physics/flesh/flesh_impact_hard4.wav",
		"physics/flesh/flesh_impact_hard5.wav",
		"physics/flesh/flesh_impact_hard6.wav",
	},
	[74] = { -- Snow
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_PLASTIC] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_METAL] = {
		"player/footsteps/metal1.wav",
		"player/footsteps/metal2.wav",
		"player/footsteps/metal3.wav",
		"player/footsteps/metal4.wav",
	},
	[MAT_SAND] = {
		"player/footsteps/sand1.wav",
		"player/footsteps/sand2.wav",
		"player/footsteps/sand3.wav",
		"player/footsteps/sand4.wav",
	},
	[MAT_FOLIAGE] = {
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_COMPUTER] = {
		"physics/plaster/drywall_footstep1.wav",
		"physics/plaster/drywall_footstep2.wav",
		"physics/plaster/drywall_footstep3.wav",
		"physics/plaster/drywall_footstep4.wav",
	},
	[MAT_SLOSH] = {
		"player/footsteps/slosh1.wav",
		"player/footsteps/slosh2.wav",
		"player/footsteps/slosh3.wav",
		"player/footsteps/slosh4.wav",
	},
	[MAT_TILE] = {
		"player/footsteps/tile1.wav",
		"player/footsteps/tile2.wav",
		"player/footsteps/tile3.wav",
		"player/footsteps/tile4.wav",
	},
	[85] = { -- Grass
		"player/footsteps/grass1.wav",
		"player/footsteps/grass2.wav",
		"player/footsteps/grass3.wav",
		"player/footsteps/grass4.wav",
	},
	[MAT_VENT] = {
		"player/footsteps/duct1.wav",
		"player/footsteps/duct2.wav",
		"player/footsteps/duct3.wav",
		"player/footsteps/duct4.wav",
	},
	[MAT_WOOD] = {
		"player/footsteps/wood1.wav",
		"player/footsteps/wood2.wav",
		"player/footsteps/wood3.wav",
		"player/footsteps/wood4.wav",
		"player/footsteps/woodpanel1.wav",
		"player/footsteps/woodpanel2.wav",
		"player/footsteps/woodpanel3.wav",
		"player/footsteps/woodpanel4.wav",
	},
	[MAT_GLASS] = {
		"physics/glass/glass_sheet_step1.wav",
		"physics/glass/glass_sheet_step2.wav",
		"physics/glass/glass_sheet_step3.wav",
		"physics/glass/glass_sheet_step4.wav",
	}
}

ENT.SoundTbl_Idle = {
	"vj_bugsnax/flavor_falls/strabby/idle_1.wav",
	"vj_bugsnax/flavor_falls/strabby/idle_2.wav",
	"vj_bugsnax/flavor_falls/strabby/idle_3.wav",
}
ENT.SoundTbl_CombatIdle = {
	"vj_bugsnax/flavor_falls/strabby/flee_1.wav",
	"vj_bugsnax/flavor_falls/strabby/flee_2.wav",
	"vj_bugsnax/flavor_falls/strabby/flee_3.wav",
}
ENT.SoundTbl_Alert = {
	"vj_bugsnax/flavor_falls/strabby/alerted_1.wav",
	"vj_bugsnax/flavor_falls/strabby/alerted_2.wav",
	"vj_bugsnax/flavor_falls/strabby/alerted_3.wav",
}
ENT.SoundTbl_Pain = {
	"vj_bugsnax/flavor_falls/strabby/alerted_1.wav",
	"vj_bugsnax/flavor_falls/strabby/alerted_2.wav",
	"vj_bugsnax/flavor_falls/strabby/alerted_3.wav",
}
ENT.SoundTbl_Impact = {
	"vj_bugsnax/flavor_falls/strabby/pestered_1.wav",
	"vj_bugsnax/flavor_falls/strabby/pestered_2.wav",
	"vj_bugsnax/flavor_falls/strabby/pestered_3.wav",
}
ENT.SoundTbl_Death = {
	"vj_bugsnax/flavor_falls/strabby/stunned_1.wav",
	"vj_bugsnax/flavor_falls/strabby/stunned_2.wav",
	"vj_bugsnax/flavor_falls/strabby/stunned_3.wav",
}

ENT.SoundTbl_FootStep = {""} -- this is only here because the footstep stuff won't work if it isn't

ENT.NextSoundTime_Idle = VJ.SET(4,7)
ENT.DisableFootStepSoundTimer = true
ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnFootStepSound()

	if !self:IsOnGround() then return end

	local tr = util.TraceLine({
		start = self:GetPos(),
		endpos = self:GetPos() +Vector(0,0,-150),
		filter = {self}
	})

	if tr.Hit && self.FootSteps[tr.MatType] then

		VJ_EmitSound(self,VJ_PICK(self.FootSteps[tr.MatType]),self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))

	end

	if self:WaterLevel() > 0 && self:WaterLevel() < 3 then

		VJ_EmitSound(self,"player/footsteps/wade" .. math.random(1,8) .. ".wav",self.FootStepSoundLevel,self:VJ_DecideSoundPitch(self.FootStepPitch.a,self.FootStepPitch.b))

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomPreOnInitialize()
	self:Snak_CustomPreOnInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomPreOnInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self.Bugsnax_NextBlinkTime = CurTime() + math.random(3,7)
	self.Bleeds = false
	self:Snak_CustomOnInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnInitialize()
	self:SetCollisionBounds(Vector(5,5,10),Vector(-5,-5,0))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAcceptInput(key,activator,caller,data)
	if key == "step" then
		self:FootStepSoundCode()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()

	self:Snak_CustomOnThink()

	-- blinking system
	if self.Bugsnax_NextBlinkTime < CurTime() then
		self:Snak_Blink()
		self.Bugsnax_NextBlinkTime = CurTime() + math.random(3,7)
	end

	if IsValid(self) then
		self:RemoveAllDecals()
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnThink()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_Blink()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTouch(ent)

	if !self.Bugsnax_WeRanTouchStuffAlready then

		self.Bugsnax_WeRanTouchStuffAlready = true

		if ent:IsPlayer() then

			self.HasDeathRagdoll = false
			self.HasDeathSounds = false

			VJ_EmitSound(ent,"vo/sandwicheat09.mp3",70,math.random(95,105))

			ent:SetHealth(ent:Health() +15)

			self:Snak_NomCloud()

			local d = DamageInfo()
			d:SetDamage(self:GetMaxHealth())
			d:SetAttacker(self)
			d:SetDamageType(DMG_BLAST) 
			self:TakeDamageInfo(d)

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_NomCloud()

	local CloudCol = Color(255,255,255) -- change depending on color of snak
	
	-- leave this stuff as-is, maybe make the cloud bigger if needed but that's it
	local effectBlood = EffectData()
	effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
	effectBlood:SetColor(VJ_Color2Byte(CloudCol))
	effectBlood:SetScale(60)
	util.Effect("VJ_Blood1",effectBlood)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_BeforeCorpseSpawned(dmginfo, hitgroup)
	self:Snak_NomCloud()
	VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,math.random(95,105))
	VJ_EmitSound(self,"physics/flesh/flesh_squishy_impact_hard"..math.random(1,4)..".wav",80,math.random(95,105))
	VJ.STOPSOUND(self.CurrentDeathSound)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:SetUpGibesOnDeath(dmginfo,hitgroup)
	self.HasDeathSounds = false
	return true,{DeathAnim=false,AllowCorpse=true}
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomGibOnDeathSounds(dmginfo, hitgroup) 
	return false
end -- returning false will make the default gibbing sounds not play