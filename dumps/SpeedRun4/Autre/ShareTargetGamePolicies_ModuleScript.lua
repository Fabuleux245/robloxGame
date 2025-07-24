-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:42
-- Luau version 6, Types version 3
-- Time taken: 0.000468 seconds

return function(arg1) -- Line 2, Named "ShareTargetGamePolicies"
	return {
		shouldShowCreatorName = function() -- Line 4, Named "shouldShowCreatorName"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local ShowShareTargetGameCreator = arg1.ShowShareTargetGameCreator
			if ShowShareTargetGameCreator ~= nil then
				return ShowShareTargetGameCreator
			end
			return false
		end;
	}
end