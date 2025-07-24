-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:20
-- Luau version 6, Types version 3
-- Time taken: 0.000756 seconds

local Parent = script.Parent.Parent
local UserInputService_upvr = game:GetService("UserInputService")
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
return function() -- Line 8
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: getUpsellFlow_upvr (readonly)
		[3]: UpsellFlow_upvr (readonly)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	if getUpsellFlow_upvr(any_GetPlatform_result1) ~= UpsellFlow_upvr.Web then
		any_GetPlatform_result1 = false
	else
		any_GetPlatform_result1 = true
	end
	return any_GetPlatform_result1
end