AddCSLuaFile("shared.lua")
/*
re-enable these for revamp update
include("vj_base/ai/core.lua")
include("vj_base/ai/schedules.lua")
include("vj_base/ai/move_aa.lua")
*/
include("shared.lua")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ENT.IdleSoundLevel = 70
ENT.CombatIdleSoundLevel = 75
ENT.AlertSoundLevel = 75
ENT.PainSoundLevel = 75
ENT.ImpactSoundLevel = 75
ENT.DeathSoundLevel = 75
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnPreInitialize()
	if self:GetClass() == "npc_vj_bugsnax_strabby_razzby" or self:GetClass() == "npc_vj_bugsnax_strabby_razzby_black" then
		self.Model = {"models/vj_bugsnax/razzby.mdl"}
	else
		self.Model = {"models/vj_bugsnax/strabby.mdl"}
	end
	self.StartHealth = 15
	self.HullType = HULL_TINY
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnInitialize()

	self:SetCollisionBounds(Vector(5,5,10),Vector(-5,-5,0))

	if self:GetClass() == "npc_vj_bugsnax_strabby_razzby" or self:GetClass() == "npc_vj_bugsnax_strabby_razzby_black" then
		self.SoundTbl_Idle = {
			"vj_bugsnax/simmering_springs/razzby/idle_1.wav",
			"vj_bugsnax/simmering_springs/razzby/idle_2.wav",
			"vj_bugsnax/simmering_springs/razzby/idle_3.wav",
		}
		self.SoundTbl_CombatIdle = {
			"vj_bugsnax/simmering_springs/razzby/flee_1.wav",
			"vj_bugsnax/simmering_springs/razzby/flee_2.wav",
			"vj_bugsnax/simmering_springs/razzby/flee_3.wav",
		}
		self.SoundTbl_Alert = {
			"vj_bugsnax/simmering_springs/razzby/alerted_1.wav",
			"vj_bugsnax/simmering_springs/razzby/alerted_2.wav",
			"vj_bugsnax/simmering_springs/razzby/alerted_3.wav",
		}
		self.SoundTbl_Pain = {
			"vj_bugsnax/simmering_springs/razzby/alerted_1.wav",
			"vj_bugsnax/simmering_springs/razzby/alerted_2.wav",
			"vj_bugsnax/simmering_springs/razzby/alerted_3.wav",
		}
		self.SoundTbl_Impact = {
			"vj_bugsnax/simmering_springs/razzby/pestered_1.wav",
			"vj_bugsnax/simmering_springs/razzby/pestered_2.wav",
			"vj_bugsnax/simmering_springs/razzby/pestered_3.wav",
		}
		self.SoundTbl_Death = {
			"vj_bugsnax/simmering_springs/razzby/stunned_1.wav",
			"vj_bugsnax/simmering_springs/razzby/stunned_2.wav",
			"vj_bugsnax/simmering_springs/razzby/stunned_3.wav",
		}

		self.SoundTbl_Burning = {
			"vj_bugsnax/simmering_springs/razzby/on_fire_1.wav",
			"vj_bugsnax/simmering_springs/razzby/on_fire_2.wav",
			"vj_bugsnax/simmering_springs/razzby/on_fire_3.wav",
		}

		self.SoundTbl_Stunned = {
			"vj_bugsnax/simmering_springs/razzby/stunned_1.wav",
			"vj_bugsnax/simmering_springs/razzby/stunned_2.wav",
			"vj_bugsnax/simmering_springs/razzby/stunned_3.wav",
		}

	else
		self.SoundTbl_Idle = {
			"vj_bugsnax/flavor_falls/strabby/idle_1.wav",
			"vj_bugsnax/flavor_falls/strabby/idle_2.wav",
			"vj_bugsnax/flavor_falls/strabby/idle_3.wav",
		}
		self.SoundTbl_CombatIdle = {
			"vj_bugsnax/flavor_falls/strabby/flee_1.wav",
			"vj_bugsnax/flavor_falls/strabby/flee_2.wav",
			"vj_bugsnax/flavor_falls/strabby/flee_3.wav",
		}
		self.SoundTbl_Alert = {
			"vj_bugsnax/flavor_falls/strabby/alerted_1.wav",
			"vj_bugsnax/flavor_falls/strabby/alerted_2.wav",
			"vj_bugsnax/flavor_falls/strabby/alerted_3.wav",
		}
		self.SoundTbl_Pain = {
			"vj_bugsnax/flavor_falls/strabby/alerted_1.wav",
			"vj_bugsnax/flavor_falls/strabby/alerted_2.wav",
			"vj_bugsnax/flavor_falls/strabby/alerted_3.wav",
		}
		self.SoundTbl_Impact = {
			"vj_bugsnax/flavor_falls/strabby/pestered_1.wav",
			"vj_bugsnax/flavor_falls/strabby/pestered_2.wav",
			"vj_bugsnax/flavor_falls/strabby/pestered_3.wav",
		}
		self.SoundTbl_Death = {
			"vj_bugsnax/flavor_falls/strabby/stunned_1.wav",
			"vj_bugsnax/flavor_falls/strabby/stunned_2.wav",
			"vj_bugsnax/flavor_falls/strabby/stunned_3.wav",
		}

		self.SoundTbl_Burning = {
			"vj_bugsnax/flavor_falls/strabby/on_fire_1.wav",
			"vj_bugsnax/flavor_falls/strabby/on_fire_2.wav",
			"vj_bugsnax/flavor_falls/strabby/on_fire_3.wav",
		}

		self.SoundTbl_Stunned = {
			"vj_bugsnax/flavor_falls/strabby/stunned_1.wav",
			"vj_bugsnax/flavor_falls/strabby/stunned_2.wav",
			"vj_bugsnax/flavor_falls/strabby/stunned_3.wav",
		}

	end

	self.FootStepSoundLevel = 55

	if self:GetClass() == "npc_vj_bugsnax_strabby_white" then
		self:SetSkin(2)
	end

	if self:GetClass() == "npc_vj_bugsnax_strabby_sprout" then
		self:SetSkin(1)
		self.VJ_NPC_Class = {
			"CLASS_BUGSNAX",
			"CLASS_PLAYER_ALLY",
		}
		self.FriendsWithAllPlayerAllies = true
		self.HasOnPlayerSight = true
		self.FollowMinDistance = 50
		self.SoundTbl_OnPlayerSight = {
			"vj_bugsnax/flavor_falls/strabby/excited_reaction_1.wav",
			"vj_bugsnax/flavor_falls/strabby/excited_reaction_2.wav",
			"vj_bugsnax/flavor_falls/strabby/excited_reaction_3.wav",
		}
		self.SoundTbl_FollowPlayer = {
			"vj_bugsnax/flavor_falls/strabby/playful_1.wav",
			"vj_bugsnax/flavor_falls/strabby/playful_2.wav",
			"vj_bugsnax/flavor_falls/strabby/playful_3.wav",
		}
		self.SoundTbl_UnFollowPlayer  = {
			"vj_bugsnax/flavor_falls/strabby/default_cry_1.wav",
			"vj_bugsnax/flavor_falls/strabby/default_cry_2.wav",
			"vj_bugsnax/flavor_falls/strabby/default_cry_3.wav",
		}
	end

	if self:GetClass() == "npc_vj_bugsnax_strabby_razzby_black" then
		self:SetSkin(1)
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_Blink()

	self:SetBodygroup(1,1)
	self:SetBodygroup(2,1)
	self:SetBodygroup(3,1)
	self:SetBodygroup(4,1)

	timer.Simple(0.15,function() if IsValid(self) then
		self:SetBodygroup(1,0)
		self:SetBodygroup(2,0)
		self:SetBodygroup(3,0)
		self:SetBodygroup(4,0)
	end end)

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_NomCloud()

	local CloudCol = Color(255,51,51) -- change depending on color of snak
	
	-- leave this stuff as-is, maybe make the cloud bigger if needed but that's it
	local effectBlood = EffectData()
	effectBlood:SetOrigin(self:GetPos() + self:OBBCenter())
	effectBlood:SetColor(VJ_Color2Byte(CloudCol))
	effectBlood:SetScale(60)
	util.Effect("VJ_Blood1",effectBlood)

end