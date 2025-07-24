-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:25
-- Luau version 6, Types version 3
-- Time taken: 0.001059 seconds

local Cryo_upvr = require(script:FindFirstAncestor("NavigationRodux").Parent.Cryo)
return function(arg1, arg2) -- Line 8
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
		var3.Navigation = {
			lockNavigationActions = nil;
		}
	end
	local var5 = var3
	if arg2.type == "ApplySetNavigationLocked" then
		if var5.Navigation.lockNavigationActions == arg2.locked then
			return var5
		end
		return {
			Navigation = Cryo_upvr.Dictionary.join(var5.Navigation, {
				lockNavigationActions = arg2.locked or false;
			});
		}
	end
	return var5
end