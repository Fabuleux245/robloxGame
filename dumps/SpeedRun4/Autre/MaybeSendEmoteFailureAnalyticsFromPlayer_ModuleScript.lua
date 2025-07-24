-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:39
-- Luau version 6, Types version 3
-- Time taken: 0.003209 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1, arg2) -- Line 16, Named "MaybeSendEmoteFailureAnalyticsFromPlayer"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Character_2 = arg1.Character
	local var7
	if not Character_2 then
		var7 = arg2
		var7(Constants_upvr.ErrorTypes.TemporarilyUnavailable)
		var7 = true
		return var7
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var7 = Character_2:FindFirstChildOfClass("Humanoid")
		return var7
	end
	if not Character_2 or not INLINED_3() then
		var7 = nil
	end
	if not var7 then
		arg2(Constants_upvr.ErrorTypes.TemporarilyUnavailable)
		return true
	end
	if var7 then
		if var7.RigType ~= Enum.HumanoidRigType.R15 then
			arg2(Constants_upvr.ErrorTypes.SwitchToR15)
			return true
		end
	end
	if not Character_2 or not Character_2:FindFirstChild("Animate") then
		local var8
	end
	if not var7 or not var7:FindFirstChildOfClass("HumanoidDescription") then
	end
	if not var8 or not nil then
		arg2(Constants_upvr.ErrorTypes.NotSupported)
		return true
	end
	if not var8 or not var8:FindFirstChild("PlayEmote") then
		local var9
	end
	if not var9 or not var9:IsA("BindableFunction") then
		arg2(Constants_upvr.ErrorTypes.NotSupported)
		return true
	end
	return false
end