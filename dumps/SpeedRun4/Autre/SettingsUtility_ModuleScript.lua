-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:27
-- Luau version 6, Types version 3
-- Time taken: 0.000764 seconds

return {
	CreateSignal = function() -- Line 2, Named "CreateSignal"
		local module = {}
		local BindableEvent_upvr = Instance.new("BindableEvent")
		local var3_upvw
		local var4_upvw
		function module.fire(arg1, ...) -- Line 10
			--[[ Upvalues[3]:
				[1]: var3_upvw (read and write)
				[2]: var4_upvw (read and write)
				[3]: BindableEvent_upvr (readonly)
			]]
			var3_upvw = {...}
			var4_upvw = select('#', ...)
			BindableEvent_upvr:Fire()
		end
		function module.connect(arg1, arg2) -- Line 16
			--[[ Upvalues[3]:
				[1]: BindableEvent_upvr (readonly)
				[2]: var3_upvw (read and write)
				[3]: var4_upvw (read and write)
			]]
			if not arg2 then
				error("connect(nil)", 2)
			end
			return BindableEvent_upvr.Event:Connect(function() -- Line 20
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: var3_upvw (copied, read and write)
					[3]: var4_upvw (copied, read and write)
				]]
				arg2(unpack(var3_upvw, 1, var4_upvw))
			end)
		end
		return module
	end;
}