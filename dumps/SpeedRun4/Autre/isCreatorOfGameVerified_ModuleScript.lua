-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:33
-- Luau version 6, Types version 3
-- Time taken: 0.001659 seconds

return function(arg1, arg2) -- Line 33, Named "isCreatorOfGameVerified"
	local var3
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var3 = arg1.GameDetails[arg2.universeId].creator
		return var3
	end
	if not arg1.GameDetails[arg2.universeId] or not INLINED_2() then
		var3 = nil
	end
	if var3 == nil or var3.id == nil then
		return false
	end
	if var3 and arg1.VerifiedBadges then
		if arg1.VerifiedBadges.VerifiedUsers then
			local type = var3.type
			if type == Enum.CreatorType.User.Name then
				if arg1.VerifiedBadges.VerifiedUsers[tostring(tostring(var3.id))] ~= true then
					type = false
				else
					type = true
				end
				return type
			end
		end
		if arg1.VerifiedBadges.VerifiedGroups then
			local type_3 = var3.type
			if type_3 == Enum.CreatorType.Group.Name then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg1.VerifiedBadges.VerifiedGroups[tostring(tostring(var3.id))] ~= true then
					type_3 = false
				else
					type_3 = true
				end
				return type_3
			end
		end
	end
	return false
end