AddCSLuaFile("shared.lua")
include("vj_base/ai/core.lua")
include("vj_base/ai/schedules.lua")
include("vj_base/ai/move_aa.lua")
include("shared.lua")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
ENT.Bugsnax_PassiveState = 0
-- 0 = Unalerted
-- 1 = Alerted, but target isn't near
-- 2 = Alerted and target got near
ENT.Bugsnax_Burning = false
ENT.Bugsnax_NextBurnPanicTime = 0

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
function ENT:CustomOnPreInitialize()
	self:Snak_CustomOnPreInitialize()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnPreInitialize()
	self.Model = {"models/vj_bugsnax/strabby.mdl"}
	self.StartHealth = 15
	self.HullType = HULL_TINY
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
	self.SoundTbl_Idle = {
		"player/survivor/voice/gambler/reactionnegative01.wav",
		"player/survivor/voice/gambler/reactionnegative02.wav",
		"player/survivor/voice/gambler/reactionnegative03.wav",
		"player/survivor/voice/gambler/reactionnegative04.wav",
		"player/survivor/voice/gambler/reactionnegative05.wav",
		"player/survivor/voice/gambler/reactionnegative06.wav",
		"player/survivor/voice/gambler/reactionnegative07.wav",
		"player/survivor/voice/gambler/reactionnegative08.wav",
		"player/survivor/voice/gambler/reactionnegative09.wav",
		"player/survivor/voice/gambler/reactionnegative10.wav",
		"player/survivor/voice/gambler/reactionnegative11.wav",
		"player/survivor/voice/gambler/reactionnegative12.wav",
		"player/survivor/voice/gambler/reactionnegative13.wav",
		"player/survivor/voice/gambler/reactionnegative14.wav",
		"player/survivor/voice/gambler/reactionnegative15.wav",
		"player/survivor/voice/gambler/reactionnegative16.wav",
		"player/survivor/voice/gambler/reactionnegative17.wav",
		"player/survivor/voice/gambler/reactionnegative18.wav",
		"player/survivor/voice/gambler/reactionnegative19.wav",
		"player/survivor/voice/gambler/reactionnegative20.wav",
		"player/survivor/voice/gambler/reactionnegative21.wav",
		"player/survivor/voice/gambler/reactionnegative22.wav",
		"player/survivor/voice/gambler/reactionnegative23.wav",
		"player/survivor/voice/gambler/reactionnegative24.wav",
		"player/survivor/voice/gambler/reactionnegative25.wav",
		"player/survivor/voice/gambler/reactionnegative26.wav",
		"player/survivor/voice/gambler/reactionnegative27.wav",
		"player/survivor/voice/gambler/reactionnegative28.wav",
		"player/survivor/voice/gambler/reactionnegative29.wav",
		"player/survivor/voice/gambler/reactionnegative30.wav",
		"player/survivor/voice/gambler/reactionnegative31.wav",
		"player/survivor/voice/gambler/reactionnegative32.wav",
		"player/survivor/voice/gambler/reactionnegative33.wav",
		"player/survivor/voice/gambler/reactionnegative34.wav",
		"player/survivor/voice/gambler/reactionnegative35.wav",
		"player/survivor/voice/gambler/reactionnegative36.wav",
		"player/survivor/voice/gambler/reactionnegative37.wav",
		"player/survivor/voice/gambler/reactionnegative38.wav",
	}
	self.SoundTbl_CombatIdle = {
		"player/survivor/voice/gambler/witchchasing01.wav",
		"player/survivor/voice/gambler/witchchasing02.wav",
		"player/survivor/voice/gambler/witchchasing03.wav",
		"player/survivor/voice/gambler/witchchasing04.wav",
		"player/survivor/voice/gambler/witchchasing05.wav",
		"player/survivor/voice/gambler/witchchasing06.wav",
	}
	self.SoundTbl_Alert = {
		"player/survivor/voice/gambler/defibrillator10.wav",
		"player/survivor/voice/gambler/defibrillator11.wav",
		"player/survivor/voice/gambler/defibrillator12.wav",
		"player/survivor/voice/gambler/defibrillator13.wav",
		"player/survivor/voice/gambler/defibrillator14.wav",
	}
	self.SoundTbl_Pain = {
		"player/survivor/voice/gambler/hurtcritical01.wav",
		"player/survivor/voice/gambler/hurtcritical02.wav",
		"player/survivor/voice/gambler/hurtcritical03.wav",
		"player/survivor/voice/gambler/hurtcritical04.wav",
		"player/survivor/voice/gambler/hurtcritical05.wav",
		"player/survivor/voice/gambler/hurtcritical06.wav",
		"player/survivor/voice/gambler/hurtcritical07.wav",
	}
	self.SoundTbl_Impact = {
		"player/survivor/voice/gambler/reactionnegative01.wav",
		"player/survivor/voice/gambler/reactionnegative02.wav",
		"player/survivor/voice/gambler/reactionnegative03.wav",
		"player/survivor/voice/gambler/reactionnegative04.wav",
		"player/survivor/voice/gambler/reactionnegative05.wav",
		"player/survivor/voice/gambler/reactionnegative06.wav",
		"player/survivor/voice/gambler/reactionnegative07.wav",
		"player/survivor/voice/gambler/reactionnegative08.wav",
		"player/survivor/voice/gambler/reactionnegative09.wav",
		"player/survivor/voice/gambler/reactionnegative10.wav",
		"player/survivor/voice/gambler/reactionnegative11.wav",
		"player/survivor/voice/gambler/reactionnegative12.wav",
		"player/survivor/voice/gambler/reactionnegative13.wav",
		"player/survivor/voice/gambler/reactionnegative14.wav",
		"player/survivor/voice/gambler/reactionnegative15.wav",
		"player/survivor/voice/gambler/reactionnegative16.wav",
		"player/survivor/voice/gambler/reactionnegative17.wav",
		"player/survivor/voice/gambler/reactionnegative18.wav",
		"player/survivor/voice/gambler/reactionnegative19.wav",
		"player/survivor/voice/gambler/reactionnegative20.wav",
		"player/survivor/voice/gambler/reactionnegative21.wav",
		"player/survivor/voice/gambler/reactionnegative22.wav",
		"player/survivor/voice/gambler/reactionnegative23.wav",
		"player/survivor/voice/gambler/reactionnegative24.wav",
		"player/survivor/voice/gambler/reactionnegative25.wav",
		"player/survivor/voice/gambler/reactionnegative26.wav",
		"player/survivor/voice/gambler/reactionnegative27.wav",
		"player/survivor/voice/gambler/reactionnegative28.wav",
		"player/survivor/voice/gambler/reactionnegative29.wav",
		"player/survivor/voice/gambler/reactionnegative30.wav",
		"player/survivor/voice/gambler/reactionnegative31.wav",
		"player/survivor/voice/gambler/reactionnegative32.wav",
		"player/survivor/voice/gambler/reactionnegative33.wav",
		"player/survivor/voice/gambler/reactionnegative34.wav",
		"player/survivor/voice/gambler/reactionnegative35.wav",
		"player/survivor/voice/gambler/reactionnegative36.wav",
		"player/survivor/voice/gambler/reactionnegative37.wav",
		"player/survivor/voice/gambler/reactionnegative38.wav",
	}
	self.SoundTbl_Death = {
		"player/survivor/voice/gambler/incapacitatedinjury01.wav",
		"player/survivor/voice/gambler/incapacitatedinjury02.wav",
		"player/survivor/voice/gambler/incapacitatedinjury03.wav",
		"player/survivor/voice/gambler/incapacitatedinjury04.wav",
		"player/survivor/voice/gambler/incapacitatedinjury05.wav",
	}

	self.SoundTbl_Burning = {
		"player/survivor/voice/gambler/incapacitatedinjury01.wav",
		"player/survivor/voice/gambler/incapacitatedinjury02.wav",
		"player/survivor/voice/gambler/incapacitatedinjury03.wav",
		"player/survivor/voice/gambler/incapacitatedinjury04.wav",
		"player/survivor/voice/gambler/incapacitatedinjury05.wav",
	}

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

	-- if we're stopping and staring, alerted with a valid enemy, not dead, and not being controlled, then..
	if self.Alerted && self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false && self.Bugsnax_PassiveState == 1 then
		local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos()) -- distance check
		if enemydist <= 200 then -- if they're closer or equal to 200 units then..
			self.Bugsnax_PassiveState = 2 -- run away!
			-- VJ_EmitSound(self,"player/survivor/voice/namvet/painreliefsigh04.wav",70,75)
			self.MovementType = VJ_MOVETYPE_GROUND
			self.HasIdleSounds = true
		end
	end

	-- behavior reset
	if !self.Alerted && self.Bugsnax_PassiveState != 0 then -- if we're not alerted and our passive state isn't 0 then..
		if self.Bugsnax_PassiveState == 1 then
			-- set the snak back to normal
			self.MovementType = VJ_MOVETYPE_GROUND
			self.HasIdleSounds = true
		end
		self.Bugsnax_PassiveState = 0 -- set it to 0
	end

	if self:IsOnFire() then
		if !self.Bugsnax_Burning then
			self.DisableFindEnemy = true
			self.IdleAlwaysWander = true
			self.HasIdleSounds = false
			self.HasPainSounds = false
			self.Bugsnax_Burning = true
			if self.Alerted then
				if self.Bugsnax_PassiveState == 1 then
					self.Bugsnax_PassiveState = 0
					self.MovementType = VJ_MOVETYPE_GROUND					
				end
				self:ResetEnemy(true)
			end
			if self:GetClass() == "npc_vj_bugsnax_strabby_sprout" && self.IsFollowing then
				self.IsFollowing = false
				self:FollowReset()
			end
		end
		if self.Bugsnax_NextBurnPanicTime < CurTime() && !self.Dead then
			VJ_EmitSound(self,self.SoundTbl_Burning,self.CombatIdleSoundLevel,self:VJ_DecideSoundPitch(self.CombatIdleSoundPitch.a,self.CombatIdleSoundPitch.b))
			self.Bugsnax_NextBurnPanicTime = CurTime() + math.random(2,4)
		end
	else
		if self.Bugsnax_Burning then
			self.DisableFindEnemy = false
			self.IdleAlwaysWander = false
			self.HasIdleSounds = false
			self.HasPainSounds = true
			self.Bugsnax_Burning = false
		end
	end

end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_CustomOnThink()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Snak_Blink()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnAlert(ent)
	-- if we're not dead, have a valid enemy, and not being controlled, then..
	if self.Dead == false && self:GetEnemy() != nil && self.VJ_IsBeingControlled == false then
		local enemydist = self:GetPos():Distance(self:GetEnemy():GetPos()) -- distance check
		if self.Bugsnax_PassiveState == 0 then
			if enemydist >= 250 then -- if they're farther or equal to 250 units then..
				self.Bugsnax_PassiveState = 1 -- stop and stare
				-- VJ_EmitSound(self,"vo/sandwicheat09.mp3",70,75)
				self.MovementType = VJ_MOVETYPE_STATIONARY
				self.HasIdleSounds = false
			else -- otherwise
				self.Bugsnax_PassiveState = 2 -- run away!
				-- VJ_EmitSound(self,"vo/sandwicheat09.mp3",70,200)
			end
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnTouch(ent)

	if !self.Bugsnax_WeRanTouchStuffAlready && self:GetClass() != "npc_vj_bugsnax_strabby_sprout" then

		if ent:IsPlayer() then

			self.Bugsnax_WeRanTouchStuffAlready = true

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
function ENT:CustomOnPriorToKilled(dmginfo, hitgroup)
	if self:IsOnFire() then
		self.SoundTbl_Death = {self.SoundTbl_Burning}
	end
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