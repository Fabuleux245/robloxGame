-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:58
-- Luau version 6, Types version 3
-- Time taken: 0.000639 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Cryo_upvr = require(Parent.Cryo)
return require(Parent.Rodux).createReducer({
	Capture = nil;
	IsOpen = false;
}, {
	[require(Parent_2.Actions.ComposerClosed).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			IsOpen = false;
		})
	end;
	[require(Parent_2.Actions.ComposerOpened).name] = function(arg1, arg2) -- Line 28
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			Capture = arg2.capture;
			IsOpen = true;
		})
	end;
})