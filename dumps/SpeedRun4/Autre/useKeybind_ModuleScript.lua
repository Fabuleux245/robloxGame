-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:08
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local useExternalEvent_upvr = require(Parent.RoactUtils).Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 15, Named "useKeybind"
	--[[ Upvalues[3]:
		[1]: useExternalEvent_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	local tbl_2 = {}
	tbl_2[1] = arg2
	useExternalEvent_upvr(UserInputService_upvr.InputBegan, function(arg1_2) -- Line 16
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1_2.KeyCode == arg1.keyCode and (arg1.modifierKey == nil or arg1_2:IsModifierKeyDown(arg1.modifierKey)) then
			arg2()
		end
	end, Cryo_upvr.List.join(tbl, tbl_2, arg3))
end