-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:23
-- Luau version 6, Types version 3
-- Time taken: 0.000569 seconds

local DispatchBindableEvent_upvr = require(script.Parent.DispatchBindableEvent)
return function(arg1) -- Line 3, Named "createDispatchBindableEvent"
	--[[ Upvalues[1]:
		[1]: DispatchBindableEvent_upvr (readonly)
	]]
	DispatchBindableEvent_upvr.Event:Connect(function(arg1_2) -- Line 4
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:dispatch(arg1_2)
	end)
	DispatchBindableEvent_upvr:SetAttribute("isConnected", true)
	return DispatchBindableEvent_upvr
end