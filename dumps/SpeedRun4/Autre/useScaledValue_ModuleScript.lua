-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:49
-- Luau version 6, Types version 3
-- Time taken: 0.000717 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local Logger_upvr = require(Foundation.Utility.Logger)
return function(arg1) -- Line 6, Named "useScaledValue"
	--[[ Upvalues[2]:
		[1]: useTokens_upvr (readonly)
		[2]: Logger_upvr (readonly)
	]]
	local var2_result1 = useTokens_upvr()
	if arg1 <= var2_result1.Size.Size_3000 then
		Logger_upvr:warning("useScaledValue should be used for values larger than Size tokens. ".."For smaller values, please align to a Size or derivative token.")
	end
	return arg1 * var2_result1.Config.UI.Scale
end