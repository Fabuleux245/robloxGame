-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:13
-- Luau version 6, Types version 3
-- Time taken: 0.001267 seconds

local function var1_upvr(arg1) -- Line 12
	local var2
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var2 = tostring(arg1.count)
		return var2
	end
	if not arg1.count or not INLINED() then
		var2 = '1'
	end
	return "Fired diagCounter: "..arg1.name..", count: "..var2
end
local Dash_upvr = require(script.Parent.Parent.Parent.Parent.Dash)
local getEventInfo_upvr = require(script.Parent.getEventInfo)
local optionallyLog_upvr = require(script.Parent.optionallyLog)
local reportCounter_upvr = require(script.Parent.reportCounter)
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: Dash_upvr (readonly)
		[2]: getEventInfo_upvr (readonly)
		[3]: optionallyLog_upvr (readonly)
		[4]: var1_upvr (readonly)
		[5]: reportCounter_upvr (readonly)
	]]
	return function(arg1_2) -- Line 24
		--[[ Upvalues[6]:
			[1]: Dash_upvr (copied, readonly)
			[2]: getEventInfo_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: optionallyLog_upvr (copied, readonly)
			[5]: var1_upvr (copied, readonly)
			[6]: reportCounter_upvr (copied, readonly)
		]]
		return Dash_upvr.compose(getEventInfo_upvr(arg1.eventList), optionallyLog_upvr(arg1.loggerImpl, var1_upvr), reportCounter_upvr(arg1.diagImpl))(arg1_2)
	end
end