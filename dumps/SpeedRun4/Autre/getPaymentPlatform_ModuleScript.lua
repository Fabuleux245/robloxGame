-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:17
-- Luau version 6, Types version 3
-- Time taken: 0.000464 seconds

local Parent = script.Parent.Parent
local getHasAmazonUserAgent_upvr = require(Parent.Utils.getHasAmazonUserAgent)
local GetFFlagEnableLuobuInGameUpsell_upvr = require(Parent.Flags.GetFFlagEnableLuobuInGameUpsell)
local getHasQuestUserAgent_upvr = require(Parent.Utils.getHasQuestUserAgent)
local getHasMilkyWayUserAgent_upvr = require(Parent.Utils.getHasMilkyWayUserAgent)
local getPaymentFromPlatform_upvr = require(Parent.Utils.getPaymentFromPlatform)
return function(arg1) -- Line 10
	--[[ Upvalues[5]:
		[1]: getHasAmazonUserAgent_upvr (readonly)
		[2]: GetFFlagEnableLuobuInGameUpsell_upvr (readonly)
		[3]: getHasQuestUserAgent_upvr (readonly)
		[4]: getHasMilkyWayUserAgent_upvr (readonly)
		[5]: getPaymentFromPlatform_upvr (readonly)
	]]
	return getPaymentFromPlatform_upvr(arg1, GetFFlagEnableLuobuInGameUpsell_upvr(), getHasAmazonUserAgent_upvr(), getHasQuestUserAgent_upvr(), getHasMilkyWayUserAgent_upvr())
end