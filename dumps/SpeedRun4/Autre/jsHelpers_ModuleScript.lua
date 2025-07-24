-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:33
-- Luau version 6, Types version 3
-- Time taken: 0.002192 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
return {
	isSymbol = function(arg1) -- Line 9, Named "isSymbol"
		local var5 = false
		if typeof(arg1) == "userdata" then
			if string.sub(tostring(arg1), 1, 7) ~= "Symbol(" then
				var5 = false
			else
				var5 = true
			end
		end
		return var5
	end;
	getOwnPropertySymbols = function(arg1) -- Line 14, Named "getOwnPropertySymbols"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: Object_upvr (readonly)
		]]
		return Array_upvr.filter(Object_upvr.keys(arg1), function(arg1_2) -- Line 15
			local var7 = false
			if typeof(arg1_2) == "userdata" then
				if string.sub(tostring(arg1_2), 1, 7) ~= "Symbol(" then
					var7 = false
				else
					var7 = true
				end
			end
			return var7
		end)
	end;
	getOwnPropertyNames = function(arg1) -- Line 21, Named "getOwnPropertyNames"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: Object_upvr (readonly)
		]]
		Array_upvr.filter(Object_upvr.keys(arg1), function(arg1_3) -- Line 22
			local var9 = false
			if typeof(arg1_3) == "userdata" then
				if string.sub(tostring(arg1_3), 1, 7) ~= "Symbol(" then
					var9 = false
				else
					var9 = true
				end
			end
			return not var9
		end)
	end;
	create = function(arg1) -- Line 28, Named "create"
		if not arg1 then
			return {}
		end
		return setmetatable({}, arg1)
	end;
}