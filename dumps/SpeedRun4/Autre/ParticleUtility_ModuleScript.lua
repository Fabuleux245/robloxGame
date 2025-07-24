-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:42
-- Luau version 6, Types version 3
-- Time taken: 0.001164 seconds

local module_upvr = {
	InstanceIsAParticleEffect = function(arg1) -- Line 10
		local children_3 = arg1:IsA("ParticleEmitter")
		if not children_3 then
			children_3 = arg1:IsA("Fire")
			if not children_3 then
				children_3 = arg1:IsA("Smoke")
				if not children_3 then
					children_3 = arg1:IsA("Sparkles")
				end
			end
		end
		return children_3
	end;
}
local function recurFastForwardParticles_upvr(arg1) -- Line 14, Named "recurFastForwardParticles"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: recurFastForwardParticles_upvr (readonly)
	]]
	if module_upvr.InstanceIsAParticleEffect(arg1) then
		arg1:FastForward(240)
	end
	for _, v in arg1:GetChildren(), nil do
		recurFastForwardParticles_upvr(v)
	end
end
function module_upvr.FastForwardParticles(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: recurFastForwardParticles_upvr (readonly)
	]]
	recurFastForwardParticles_upvr(arg1)
end
return module_upvr