-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:40
-- Luau version 6, Types version 3
-- Time taken: 0.001742 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local module_upvr = {Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
local Constants_upvr = require(Parent.Constants)
return function(arg1) -- Line 18, Named "ReportOpenDetailsPage"
	--[[ Upvalues[6]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: UtilityFunctions_upvr (readonly)
		[5]: SendCounter_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2) -- Line 19
		--[[ Upvalues[5]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: UtilityFunctions_upvr (copied, readonly)
			[4]: SendCounter_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var9 = arg1
		if var9 then
			if arg1.parentBundleId == nil then
				var9 = false
			else
				var9 = true
			end
		end
		local var10
		if var9 then
			var10 = "Bundle"
		else
			var10 = "Asset"
		end
		arg2[Analytics_upvr].reportItemDetailPageOpened(var10, arg1.assetId)
		arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.ItemDetailPageOpened))
	end)
end