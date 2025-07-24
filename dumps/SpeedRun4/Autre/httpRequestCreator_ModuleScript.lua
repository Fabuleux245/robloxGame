-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:45
-- Luau version 6, Types version 3
-- Time taken: 0.001386 seconds

local HttpRequest_upvr = require(script.Parent.HttpRequest)
local Promise_upvr = require(script:FindFirstAncestor("HttpRequest").Parent.Promise)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: HttpRequest_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	local var4
	if type(arg1.requestFunction) ~= "function" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Expected requestFunction to be a function")
	return function(arg1_2, arg2, arg3) -- Line 9
		--[[ Upvalues[3]:
			[1]: HttpRequest_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
		]]
		local var6
		if type(arg1_2) ~= "string" then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "Expected url to be a string")
		if type(arg2) ~= "string" then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "Expected requestMethod to be a string")
		var6 = not arg3
		if not var6 then
			if type(arg3) ~= "table" then
				var6 = false
			else
				var6 = true
			end
		end
		assert(var6, "Expected options to be a table")
		var6 = arg2
		var6 = HttpRequest_upvr
		var6 = arg1
		local any_new_result1_upvr = var6.new(var6, arg1_2, string.upper(var6), arg3)
		var6 = Promise_upvr.new
		var6 = var6(function(arg1_3, arg2_2) -- Line 17
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			coroutine.wrap(function() -- Line 18
				--[[ Upvalues[3]:
					[1]: any_new_result1_upvr (copied, readonly)
					[2]: arg1_3 (readonly)
					[3]: arg2_2 (readonly)
				]]
				any_new_result1_upvr:start(arg1_3, arg2_2)
			end)()
		end)
		return var6, function() -- Line 23, Named "cancel"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:cancel()
		end
	end
end