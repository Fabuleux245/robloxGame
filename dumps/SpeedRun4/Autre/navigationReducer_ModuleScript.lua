-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:25
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

local Parent = script.Parent.Parent
local Pages_upvr = require(Parent.Components.Pages)
local NavigateBack_upvr = require(Parent.Actions.NavigateBack)
local Cryo_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Cryo
local SetCurrentPage_upvr = require(Parent.Actions.SetCurrentPage)
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[4]:
		[1]: Pages_upvr (readonly)
		[2]: NavigateBack_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: SetCurrentPage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local type = arg2.type
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 51. Error Block 8 start (CF ANALYSIS FAILED)
	do
		return Cryo_upvr.Dictionary.join(arg1, {
			menuPage = type;
		})
	end
	do
		return arg1
	end
	-- KONSTANTERROR: [76] 51. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [88] 60. Error Block 12 start (CF ANALYSIS FAILED)
	if arg2.type == SetCurrentPage_upvr.name then
		return Cryo_upvr.Dictionary.join(arg1, {
			currentlyOpenBubble = Cryo_upvr.None;
		})
	end
	-- KONSTANTERROR: [88] 60. Error Block 12 end (CF ANALYSIS FAILED)
end