-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:06
-- Luau version 6, Types version 3
-- Time taken: 0.000686 seconds

local ProfileShareLinks = script:FindFirstAncestor("ProfileShareLinks")
local Parent = ProfileShareLinks.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local Networking_upvr = require(ProfileShareLinks.Networking.Networking)
return function() -- Line 12
	--[[ Upvalues[3]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Networking_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return React_upvr.useCallback(function() -- Line 15
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: Networking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(Networking_upvr.ShareLinksNetworking.GetOrGenerateLink.API({
			linkType = "Profile";
		})):catch(function() -- Line 17
		end)
	end, {useDispatch_upvr_result1_upvr})
end