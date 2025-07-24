-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:08
-- Luau version 6, Types version 3
-- Time taken: 0.001051 seconds

local var1_upvw = true
local module = {}
local var3_upvw = false
local var4_upvw = false
local BindableEvent_upvr = Instance.new("BindableEvent")
local Players_upvr = game:GetService("Players")
local var7_upvw
function module.InitAsync(arg1) -- Line 20
	--[[ Upvalues[6]:
		[1]: var1_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var4_upvw (read and write)
		[4]: BindableEvent_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: var7_upvw (read and write)
	]]
	local var8_upvw
	if var8_upvw then
		var8_upvw = false
		var1_upvw = var8_upvw
	else
		var8_upvw = var3_upvw
		if var8_upvw then return end
		var8_upvw = var4_upvw
		if var8_upvw then
			var8_upvw = BindableEvent_upvr.Event:Wait
			var8_upvw()
			return
		end
		var8_upvw = true
		var4_upvw = var8_upvw
		var8_upvw = Players_upvr.LocalPlayer
		while not var8_upvw do
			Players_upvr.PlayerAdded:Wait()
			var8_upvw = Players_upvr.LocalPlayer
		end
		assert(var8_upvw, "")
		pcall(function() -- Line 43
			--[[ Upvalues[2]:
				[1]: var7_upvw (copied, read and write)
				[2]: var8_upvw (read and write)
			]]
			var7_upvw = game:GetService("PolicyService"):GetPolicyInfoForPlayerAsync(var8_upvw)
		end)
		if var7_upvw then
			var1_upvw = var7_upvw.IsSubjectToChinaPolicies
		end
		var3_upvw = true
		BindableEvent_upvr:Fire()
	end
end
function module.IsSubjectToChinaPolicies(arg1) -- Line 54
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	arg1:InitAsync()
	return var1_upvw
end
return module