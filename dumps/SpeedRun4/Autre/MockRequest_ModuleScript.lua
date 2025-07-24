-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:48
-- Luau version 6, Types version 3
-- Time taken: 0.000855 seconds

local Cryo_upvr = require(script:FindFirstAncestor("HttpRequest").Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 4
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return {
		Start = function(arg1_2, arg2_2) -- Line 6, Named "Start"
			--[[ Upvalues[4]:
				[1]: arg3 (readonly)
				[2]: Cryo_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
			]]
			local tbl = {}
			if type(arg3.mockResponse) == "function" then
				tbl = arg3.mockResponse()
			elseif arg3.mockResponse then
				tbl = arg3.mockResponse
			end
			local tbl_2 = {}
			tbl_2.Url = arg1
			tbl_2.Method = arg2
			arg2_2(arg3.success, Cryo_upvr.Dictionary.join(tbl_2, tbl))
		end;
		Cancel = function() -- Line 21, Named "Cancel"
			--[[ Upvalues[1]:
				[1]: arg3 (readonly)
			]]
			if arg3.cancel then
				arg3.cancel()
			end
		end;
	}
end