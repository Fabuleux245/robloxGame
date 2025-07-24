-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:42
-- Luau version 6, Types version 3
-- Time taken: 0.002167 seconds

local getDeepValue_upvr = require(script.Parent.Parent.Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: getDeepValue_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2) -- Line 8
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1_2, keyPath_upvr..".byContactId")
		if not getDeepValue_upvr_result1 then
			getDeepValue_upvr_result1 = {}
		end
		for i, v in pairs(getDeepValue_upvr_result1) do
			table.insert({}, {
				contactId = i;
				contactName = v.contactName;
				headshotThumbnailUrl = v.headshotThumbnailUrl;
				avatarThumbnailUrl = v.avatarThumbnailUrl;
			})
			local var19
		end
		table.sort(var19, function(arg1_3, arg2) -- Line 20
			local var22
			if var22 then
				var22 = arg2.contactName
				if var22 then
					var22 = arg1_3.contactName
					if var22 ~= arg2.contactName then
						if arg1_3.contactName >= arg2.contactName then
							var22 = false
						else
							var22 = true
						end
						return var22
					end
				end
			end
			if arg1_3.contactId >= arg2.contactId then
				var22 = false
			else
			end
			return true
		end)
		return var19
	end
end