-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:04
-- Luau version 6, Types version 3
-- Time taken: 0.001054 seconds

local Parent = script.Parent.Parent
local isSubjectToDesktopPolicies_upvr = require(Parent.SharedFlags).isSubjectToDesktopPolicies
local default_upvr = require(Parent.LinkingProtocol).LinkingProtocol.default
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[2]:
		[1]: isSubjectToDesktopPolicies_upvr (readonly)
		[2]: default_upvr (readonly)
	]]
	return pcall(function() -- Line 11
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: isSubjectToDesktopPolicies_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if arg2 and not isSubjectToDesktopPolicies_upvr() then
			game:Shutdown()
		end
		default_upvr:isURLRegistered(arg1):andThen(function(arg1_2) -- Line 15
			--[[ Upvalues[3]:
				[1]: default_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg2 (copied, readonly)
			]]
			if arg1_2 then
				default_upvr:detectURL(arg1)
			elseif arg2 then
				game:Shutdown()
				default_upvr:detectURL(arg1)
			end
		end)
	end)
end