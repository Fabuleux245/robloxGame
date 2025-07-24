-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:38
-- Luau version 6, Types version 3
-- Time taken: 0.000873 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Types = Parent_2.Types
local Rodux_upvr = require(Parent.Rodux)
local module_upvr_2 = {}
local getDeepValue_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 12
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: getDeepValue_upvr (readonly)
		[4]: Dash_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr_2, {
		[arg1.networkingContacts.UploadContactsByUser.Succeeded.name] = function(arg1_2, arg2) -- Line 16
			--[[ Upvalues[2]:
				[1]: getDeepValue_upvr (copied, readonly)
				[2]: Dash_upvr (copied, readonly)
			]]
			if not getDeepValue_upvr(arg2, "responseBody.matchedContactFields") then
				return {}
			end
			local module_upvr = {}
			Dash_upvr.forEach(arg2.responseBody.matchedContactFields, function(arg1_3) -- Line 27
				--[[ Upvalues[1]:
					[1]: module_upvr (readonly)
				]]
				if not module_upvr[arg1_3.idAssignedByFE] then
					module_upvr[arg1_3.idAssignedByFE] = {}
				end
				module_upvr[arg1_3.idAssignedByFE][arg1_3.userContactId] = true
			end)
			return module_upvr
		end;
	})
end