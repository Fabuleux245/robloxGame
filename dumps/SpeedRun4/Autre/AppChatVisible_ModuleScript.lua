-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:04
-- Luau version 6, Types version 3
-- Time taken: 0.000282 seconds

local BindableEvent_upvr = Instance.new("BindableEvent")
return {
	BindableEvent = BindableEvent_upvr;
	setAppChatVisible = function(arg1) -- Line 3, Named "setAppChatVisible"
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvr (readonly)
		]]
		BindableEvent_upvr:Fire(arg1)
	end;
}