-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:30
-- Luau version 6, Types version 3
-- Time taken: 0.000949 seconds

local module_2 = {}
local roblox_upvr = require(script.Parent["ReactBinding.roblox"])
function module_2.createRef() -- Line 25
	--[[ Upvalues[1]:
		[1]: roblox_upvr (readonly)
	]]
	local any_create_result1_upvr, any_create_result2 = roblox_upvr.create(nil)
	local module = {}
	if _G.__DEV__ then
		any_create_result1_upvr._source = debug.traceback("Ref created at:", 1)
	end
	setmetatable(module, {
		__index = function(arg1, arg2) -- Line 43, Named "__index"
			--[[ Upvalues[1]:
				[1]: any_create_result1_upvr (readonly)
			]]
			if arg2 == "current" then
				return any_create_result1_upvr:getValue()
			end
			return any_create_result1_upvr[arg2]
		end;
		__newindex = function(arg1, arg2, arg3) -- Line 50, Named "__newindex"
			--[[ Upvalues[2]:
				[1]: roblox_upvr (copied, readonly)
				[2]: any_create_result1_upvr (readonly)
			]]
			if arg2 == "current" then
				roblox_upvr.update(any_create_result1_upvr, arg3)
			end
			any_create_result1_upvr[arg2] = arg3
		end;
		__tostring = function(arg1) -- Line 61, Named "__tostring"
			--[[ Upvalues[1]:
				[1]: any_create_result1_upvr (readonly)
			]]
			return string.format("Ref(%s)", tostring(any_create_result1_upvr:getValue()))
		end;
	})
	return module
end
return module_2