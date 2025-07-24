-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:09
-- Luau version 6, Types version 3
-- Time taken: 0.000831 seconds

local Object_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Object
function getIntrospectionQuery(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 56 start (CF ANALYSIS FAILED)
	local any_assign_result1 = Object_upvr.assign({
		descriptions = true;
		specifiedByUrl = false;
		directiveIsRepeatable = false;
		schemaDescription = false;
		inputValueDeprecation = false;
	}, arg1)
	if any_assign_result1.descriptions then
	else
	end
	if any_assign_result1.specifiedByUrl then
		-- KONSTANTWARNING: GOTO [33] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 64 start (CF ANALYSIS FAILED)
	if any_assign_result1.directiveIsRepeatable then
		-- KONSTANTWARNING: GOTO [39] #31
	end
	-- KONSTANTERROR: [32] 25. Error Block 64 end (CF ANALYSIS FAILED)
end
return {
	getIntrospectionQuery = getIntrospectionQuery;
}