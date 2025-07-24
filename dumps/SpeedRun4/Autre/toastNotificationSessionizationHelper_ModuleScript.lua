-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:48
-- Luau version 6, Types version 3
-- Time taken: 0.000590 seconds

local Parent = script.Parent.Parent
local type_upvr = require(Parent.type)
local SessionService_upvr = game:GetService("SessionService")
local constants_upvr = require(Parent.constants)
return function(arg1) -- Line 6
	--[[ Upvalues[3]:
		[1]: type_upvr (readonly)
		[2]: SessionService_upvr (readonly)
		[3]: constants_upvr (readonly)
	]]
	if arg1 == type_upvr.ToastNotificationActionsEnum.Display then
		SessionService_upvr:SetSession(constants_upvr.ToastStructuralIdentifier.Level1, constants_upvr.ToastStructuralIdentifier.ToastNotification, constants_upvr.ToastStructuralIdentifier.ToastNotification)
	elseif arg1 == type_upvr.ToastNotificationActionsEnum.Dismissed or arg1 == type_upvr.ToastNotificationActionsEnum.Ignored then
		SessionService_upvr:RemoveSession(constants_upvr.ToastStructuralIdentifier.ToastNotification)
	end
end