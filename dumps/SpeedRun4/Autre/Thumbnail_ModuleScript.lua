-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:52
-- Luau version 6, Types version 3
-- Time taken: 0.001692 seconds

local module_upvr = {
	new = function() -- Line 12, Named "new"
		return {}
	end;
}
function module_upvr.fromThumbnailData(arg1, arg2) -- Line 18
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.universeId = tostring(arg1.targetId)
	any_new_result1.state = arg1.state
	any_new_result1.url = arg1.imageUrl
	any_new_result1.size = arg2
	return any_new_result1
end
function module_upvr.isCompleteThumbnailData(arg1) -- Line 29
	local var6 = false
	if type(arg1) == "table" then
		var6 = false
		if type(arg1.targetId) == "number" then
			var6 = false
			if type(arg1.state) == "string" then
				var6 = true
				if type(arg1.imageUrl) ~= "string" then
					if arg1.imageUrl ~= nil then
						var6 = false
					else
						var6 = true
					end
				end
			end
		end
	end
	return var6
end
function module_upvr.checkStateIsFinal(arg1) -- Line 36
	if arg1 == "Pending" then
	else
	end
	return true
end
return module_upvr