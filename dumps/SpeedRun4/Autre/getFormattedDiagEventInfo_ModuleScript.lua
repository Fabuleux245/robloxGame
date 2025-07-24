-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:15
-- Luau version 6, Types version 3
-- Time taken: 0.001435 seconds

local function _(arg1, arg2) -- Line 7, Named "formatValue"
	if type(arg1) == "function" then
		return arg1(arg2)
	end
	return arg1
end
local DiagEventTypes_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Analytics.Enums).DiagEventTypes
return function() -- Line 11, Named "getFormattedDiagEventInfo"
	--[[ Upvalues[1]:
		[1]: DiagEventTypes_upvr (readonly)
	]]
	return function(arg1, arg2) -- Line 12
		--[[ Upvalues[1]:
			[1]: DiagEventTypes_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var3
		if type(arg1.name) == "function" then
		else
		end
		var3 = arg1.type
		if not var3 then
			var3 = DiagEventTypes_upvr.Counter
		end
		local Stats = DiagEventTypes_upvr.Stats
		if var3 == Stats then
			local stats = arg1.stats
			if type(stats) == "function" then
				Stats = stats(arg2)
			else
				Stats = stats
			end
		else
			local count = arg1.count
			if type(count) == "function" then
				Stats = count(arg2)
			else
				Stats = count
			end
		end
		return {
			type = var3;
			name = var3;
			value = Stats or 1;
			platformSpecificity = arg1.platformSpecificity;
		}
	end
end