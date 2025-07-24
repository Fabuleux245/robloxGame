-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:09
-- Luau version 6, Types version 3
-- Time taken: 0.001164 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local Players_upvr = game:GetService("Players")
return function() -- Line 8, Named "useLocalPlayer"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return React_upvr.useMemo(function() -- Line 9
		--[[ Upvalues[1]:
			[1]: Players_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var4
		while not var4 do
			Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
			var4 = Players_upvr.LocalPlayer
		end
		if var4 == nil then
		else
		end
		assert(true)
		return var4
	end)
end