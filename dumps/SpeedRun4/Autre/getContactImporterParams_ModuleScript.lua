-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:00
-- Luau version 6, Types version 3
-- Time taken: 0.000704 seconds

local Parent = script.Parent.Parent
local getDeepValue_upvr = require(Parent.dependencies).SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY_upvr = require(Parent.Common.Constants).RODUX_KEY
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: RODUX_KEY_upvr (readonly)
	]]
	local var3_result1 = getDeepValue_upvr(arg1, RODUX_KEY_upvr..'.'.."ShowContactImporterParams")
	if not var3_result1 then
		var3_result1 = {}
	end
	return var3_result1
end