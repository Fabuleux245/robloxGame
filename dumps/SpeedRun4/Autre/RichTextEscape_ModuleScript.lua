-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:30
-- Luau version 6, Types version 3
-- Time taken: 0.000740 seconds

local tbl_upvr = {
	['<'] = "&lt;";
	['>'] = "&gt;";
	['"'] = "&quot;";
	["'"] = "&apos;";
}
return function(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local any_gsub_result1 = arg1:gsub('&', "&amp;")
	for i, v in pairs(tbl_upvr) do
		any_gsub_result1 = any_gsub_result1:gsub(i, v)
	end
	return any_gsub_result1
end