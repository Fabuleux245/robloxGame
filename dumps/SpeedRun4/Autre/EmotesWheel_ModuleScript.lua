-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:35
-- Luau version 6, Types version 3
-- Time taken: 0.000666 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
local module_upvr = {
	focusedSegmentIndex = 0;
}
return require(CorePackages.Packages.Rodux).createReducer(module_upvr, {
	[require(Actions.FocusSegment).name] = function(arg1, arg2) -- Line 18
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			focusedSegmentIndex = arg2.segmentIndex;
		})
	end;
	[require(Actions.HideMenu).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (readonly)
			[2]: module_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, module_upvr)
	end;
})