-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:50
-- Luau version 6, Types version 3
-- Time taken: 0.001561 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	if not arg1 then
		warn("observableValue undefined")
		return React_upvr.useBinding(nil)
	end
	local var3_upvw
	if arg2 then
		var3_upvw = arg2
	else
		var3_upvw = function(arg1_2) -- Line 17
			return arg1_2
		end
	end
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(var3_upvw(arg1:get()))
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 24
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useBinding_result2_upvr (readonly)
			[3]: var3_upvw (read and write)
		]]
		any_useBinding_result2_upvr(var3_upvw(arg1:get()))
		local any_connect_result1_upvr = arg1:connect(function() -- Line 25
			--[[ Upvalues[3]:
				[1]: any_useBinding_result2_upvr (copied, readonly)
				[2]: var3_upvw (copied, read and write)
				[3]: arg1 (copied, readonly)
			]]
			any_useBinding_result2_upvr(var3_upvw(arg1:get()))
		end)
		return function() -- Line 31
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
	end, tbl)
	return any_useBinding_result1
end