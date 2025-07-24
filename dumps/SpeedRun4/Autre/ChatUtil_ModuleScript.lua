-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:38
-- Luau version 6, Types version 3
-- Time taken: 0.001416 seconds

return {
	Signal = function() -- Line 4, Named "Signal"
		local module = {}
		local BindableEvent_upvr = Instance.new("BindableEvent")
		local var4_upvw
		local var5_upvw
		function module.fire(arg1, ...) -- Line 12
			--[[ Upvalues[3]:
				[1]: var4_upvw (read and write)
				[2]: var5_upvw (read and write)
				[3]: BindableEvent_upvr (readonly)
			]]
			var4_upvw = {...}
			var5_upvw = select('#', ...)
			BindableEvent_upvr:Fire()
		end
		function module.connect(arg1, arg2) -- Line 18
			--[[ Upvalues[3]:
				[1]: BindableEvent_upvr (readonly)
				[2]: var4_upvw (read and write)
				[3]: var5_upvw (read and write)
			]]
			if not arg2 then
				error("connect(nil)", 2)
			end
			return BindableEvent_upvr.Event:connect(function() -- Line 20
				--[[ Upvalues[3]:
					[1]: arg2 (readonly)
					[2]: var4_upvw (copied, read and write)
					[3]: var5_upvw (copied, read and write)
				]]
				arg2(unpack(var4_upvw, 1, var5_upvw))
			end)
		end
		function module.wait(arg1) -- Line 25
			--[[ Upvalues[3]:
				[1]: BindableEvent_upvr (readonly)
				[2]: var4_upvw (read and write)
				[3]: var5_upvw (read and write)
			]]
			BindableEvent_upvr.Event:wait()
			assert(var4_upvw, "Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
			return unpack(var4_upvw, 1, var5_upvw)
		end
		return module
	end;
}