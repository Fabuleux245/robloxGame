-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:26
-- Luau version 6, Types version 3
-- Time taken: 0.000992 seconds

return function(arg1) -- Line 30, Named "formatNumberWithShortUnits"
	local absolute = math.abs(arg1)
	local var2
	if 1000000000 <= absolute then
		var2 = "%.0fB":format(math.floor(arg1 / 1000000000))
	elseif 1000000 <= absolute then
		if 100000000 <= absolute then
			var2 = "%.0fM":format(math.floor(arg1 / 1000000))
		else
			var2 = "%.1fM":format(arg1 / 1000000)
		end
	elseif 1000 <= absolute then
		if 100000 <= absolute then
			var2 = "%.0fK":format(math.floor(arg1 / 1000))
		else
			var2 = "%.1fK":format(arg1 / 1000)
		end
	else
		var2 = tostring(arg1)
	end
	local any_match_result1, any_match_result2 = var2:match("(%d+)%.0(%w+)")
	if any_match_result1 and any_match_result2 then
		var2 = any_match_result1..any_match_result2
	end
	return var2
end