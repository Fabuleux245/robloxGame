-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:26
-- Luau version 6, Types version 3
-- Time taken: 0.000496 seconds

return function(arg1) -- Line 7, Named "getEventCategory"
	local eventCategories = arg1.eventCategories
	if eventCategories == nil or #eventCategories == 0 then
		return nil
	end
	for _, v in ipairs(eventCategories) do
		if v ~= nil and v.rank == 0 then
			return v.category
		end
	end
	return nil
end