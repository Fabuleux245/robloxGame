-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:34
-- Luau version 6, Types version 3
-- Time taken: 0.000932 seconds

return function(...) -- Line 1, Named "waitForFirst"
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local args_list_upvr = {...}
	local function fire(...) -- Line 5
		--[[ Upvalues[2]:
			[1]: args_list_upvr (readonly)
			[2]: BindableEvent_upvr (readonly)
		]]
		for i = 1, #args_list_upvr do
			args_list_upvr[i]:Disconnect()
		end
		return BindableEvent_upvr:Fire(...)
	end
	for i_2 = 1, #args_list_upvr do
		args_list_upvr[i_2] = args_list_upvr[i_2]:Connect(fire)
	end
	return BindableEvent_upvr.Event:Wait()
end