-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:53
-- Luau version 6, Types version 3
-- Time taken: 0.000739 seconds

local Parent = script.Parent.Parent
local Responsive_upvr = require(Parent.Parent.Responsive)
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local Mocks_upvr = require(Parent.Mocks)
local Placement_upvr = require(Parent.Enum.Placement)
return function() -- Line 12, Named "useNavBarPlacement"
	--[[ Upvalues[4]:
		[1]: usePreferredInput_upvr (readonly)
		[2]: Mocks_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: Placement_upvr (readonly)
	]]
	if Mocks_upvr.navBarPlacement ~= nil then
		return Mocks_upvr.navBarPlacement
	end
	if usePreferredInput_upvr() == Responsive_upvr.Input.Pointer then
		return Placement_upvr.Left
	end
	return Placement_upvr.Bottom
end