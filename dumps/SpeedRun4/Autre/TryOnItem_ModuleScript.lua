-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:41
-- Luau version 6, Types version 3
-- Time taken: 0.000838 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local module_upvr = {Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
local SetTryingOnInfo_upvr = require(Parent.Actions.SetTryingOnInfo)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 18, Named "TryOnItem"
	--[[ Upvalues[6]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: SetTryingOnInfo_upvr (readonly)
		[5]: SendCounter_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 19
		--[[ Upvalues[9]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: arg4 (readonly)
			[3]: arg5 (readonly)
			[4]: arg2 (readonly)
			[5]: SetTryingOnInfo_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: arg3 (readonly)
			[8]: SendCounter_upvr (copied, readonly)
			[9]: Constants_upvr (copied, readonly)
		]]
		local var9
		local var10
		if arg4 then
			var9 = "Bundle"
			var10 = arg5
		else
			var9 = "Asset"
			var10 = arg2
		end
		arg2_2[Analytics_upvr].reportTryOnButtonClicked(var9, var10)
		arg1_2:dispatch(SetTryingOnInfo_upvr(arg1, arg2, arg3))
		arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.TryOnButtonClicked))
	end)
end