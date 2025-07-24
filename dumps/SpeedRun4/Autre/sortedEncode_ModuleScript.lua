-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:43
-- Luau version 6, Types version 3
-- Time taken: 0.001122 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local HttpService_upvr = game:GetService("HttpService")
function sortedEncode(arg1) -- Line 14
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if not Array_upvr.isArray(arg1) and typeof(arg1) == "table" then
		return '{'..Array_upvr.join(Array_upvr.map(Array_upvr.sort(Object_upvr.keys(arg1)), function(arg1_2) -- Line 16
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return HttpService_upvr:JSONEncode(arg1_2)..':'..sortedEncode(arg1[arg1_2])
		end), ',')..'}'
	end
	return HttpService_upvr:JSONEncode(arg1)
end
return {
	sortedEncode = sortedEncode;
}