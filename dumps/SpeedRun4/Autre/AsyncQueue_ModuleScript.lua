-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:36
-- Luau version 6, Types version 3
-- Time taken: 0.001534 seconds

local Promise_upvr = require(script:FindFirstAncestor("AppCommonLib").Parent.Promise)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 26
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {
		head = Promise_upvr.resolve();
	}
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.request(arg1, arg2) -- Line 34
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local var5_upvw = false
	local var6_upvw = false
	arg1.head = arg1.head:andThen(function() -- Line 39
		--[[ Upvalues[5]:
			[1]: Promise_upvr (copied, readonly)
			[2]: var5_upvw (read and write)
			[3]: arg2 (readonly)
			[4]: var6_upvw (read and write)
			[5]: BindableEvent_upvr (readonly)
		]]
		return Promise_upvr.new(function(arg1_2) -- Line 40
			--[[ Upvalues[4]:
				[1]: var5_upvw (copied, read and write)
				[2]: arg2 (copied, readonly)
				[3]: var6_upvw (copied, read and write)
				[4]: BindableEvent_upvr (copied, readonly)
			]]
			if not var5_upvw then
				pcall(arg2)
			end
			if not var5_upvw then
				var6_upvw = true
				BindableEvent_upvr.Event:Wait()
			end
			BindableEvent_upvr:Destroy()
			arg1_2()
		end)
	end)
	return function() -- Line 53, Named "release"
		--[[ Upvalues[3]:
			[1]: var6_upvw (read and write)
			[2]: BindableEvent_upvr (readonly)
			[3]: var5_upvw (read and write)
		]]
		if var6_upvw then
			BindableEvent_upvr:Fire()
		else
			var5_upvw = true
		end
	end
end
return module_2_upvr