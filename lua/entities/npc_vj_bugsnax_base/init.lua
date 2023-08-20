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
ENT.BringFriendsOnDeath = false

ENT.Bugsnax_WeRanTouchStuffAlready = false

ENT.SoundTbl_FootStep = {}
ENT.SoundTbl_Breath = {}
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

ENT.NextSoundTime_Idle = VJ.SET(2,3)

ENT.GeneralSoundPitch1 = 100
ENT.GeneralSoundPitch2 = 100
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:Snak_CustomOnInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnInitialize()
	self:SetCollisionBounds(Vector(5,5,10),Vector(-5,-5,0))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTouch(ent)

	if !self.Bugsnax_WeRanTouchStuffAlready then

		self.Bugsnax_WeRanTouchStuffAlready = true

		if ent:IsPlayer() then

			self.HasDeathRagdoll = false
			self.HasDeathSounds = false

			VJ_EmitSound(ent,"vo/sandwicheat09.mp3",70,100)
			VJ_EmitSound(self,"physics/body/body_medium_break"..math.random(2,4)..".wav",80,100)

			-- self:SetHealth(math_clamp(15, myHP, self:GetMaxHealth()))
			-- ent:SetHealth(math_clamp(ent + 15, ent, ent:GetMaxHealth()))
			-- ent:SetHealth(ent:Health() +2)
			ent:SetHealth(ent:Health() +15)

			local CloudCol = Color(255,51,51)

			local effectBlood = EffectData()
			effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
			effectBlood:SetColor(VJ_Color2Byte(CloudCol))
			effectBlood:SetScale(60)
			util.Effect("VJ_Blood1",effectBlood)

			local d = DamageInfo()
			d:SetDamage(self:GetMaxHealth())
			d:SetAttacker(self)
			d:SetDamageType(DMG_GENERIC) 
			self:TakeDamageInfo(d)

		end

	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
-- function ENT:SetUpGibesOnDeath(dmginfo, hitgroup)

	-- self.HasDeathSounds = false
	
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_rib.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_rib.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_rib.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_rib.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_rib.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_scapula.mdl")
	-- self:CreateGibEntity("prop_physics","models/Gibs/HGIBS_spine.mdl")

	-- return true
	
-- end
-----------------------------------------------------------------------------------------------------------------
-- function ENT:CustomGibOnDeathSounds(dmginfo, hitgroup)
	-- VJ_EmitSound(self, "bbohg/skeletons/death.mp3", 90, 100)
	-- return false
-- end
---------------------------------------------------------------------------------------------------------------------------------------------