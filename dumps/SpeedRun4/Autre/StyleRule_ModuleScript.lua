-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:26
-- Luau version 6, Types version 3
-- Time taken: 0.000842 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
return React_upvr.memo(function(arg1) -- Line 13, Named "StyleRule"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	return React_upvr.createElement("StyleRule", {
		Priority = arg1.Priority or 1;
		Selector = arg1.Selector;
		ref = React_upvr.useCallback(function(arg1_2) -- Line 14
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2 ~= nil then
				arg1_2:SetProperties(arg1.properties)
			end
		end, {arg1.properties});
	})
end)