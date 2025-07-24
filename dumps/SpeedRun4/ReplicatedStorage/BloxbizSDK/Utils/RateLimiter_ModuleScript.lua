-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:07
-- Luau version 6, Types version 3
-- Time taken: 0.001382 seconds

local module = {
	rateLimitingEvents = {};
}
local any_read_result1_upvr = require(script.Parent.Parent.ConfigReader):read("RateLimitThreshold")
local Utils_upvr = require(script.Parent.Parent.Utils)
function module.checkRateLimiting(arg1, arg2) -- Line 14
	--[[ Upvalues[2]:
		[1]: any_read_result1_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local os_time_result1 = os.time()
	local UserId = arg2.UserId
	if not arg1.rateLimitingEvents[UserId] then
		arg1.rateLimitingEvents[UserId] = {}
	end
	for i, v in ipairs(arg1.rateLimitingEvents[UserId]) do
		if os_time_result1 - 60 <= v then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1.rateLimitingEvents[UserId] = {}
	table.insert(arg1.rateLimitingEvents[UserId], os_time_result1)
	if any_read_result1_upvr < #arg1.rateLimitingEvents[UserId] then
		i = tostring(any_read_result1_upvr)
		v = " hit by player ID: "
		Utils_upvr.pprint("[SuperBiz] Rate limiting threshold of "..i..v..tostring(UserId))
		return true
	end
	return false
end
return module