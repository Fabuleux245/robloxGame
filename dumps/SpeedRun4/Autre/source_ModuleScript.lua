-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:43
-- Luau version 6, Types version 3
-- Time taken: 0.001432 seconds

local Parent = script.Parent.Parent
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local devAssert_upvr = require(Parent.jsutils.devAssert).devAssert
local inspect_upvr = require(Parent.jsutils.inspect).inspect
function tbl_upvr.new(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[3]:
		[1]: devAssert_upvr (readonly)
		[2]: inspect_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var5
	if not arg3 then
	end
	if typeof(arg1) ~= "string" then
		var5 = false
	else
		var5 = true
	end
	devAssert_upvr(var5, "Body must be a string. Received: "..inspect_upvr(arg1)..'.')
	local tbl = {}
	tbl.body = arg1
	tbl.name = arg2 or "GraphQL request"
	tbl.locationOffset = {
		line = 1;
		column = 1;
	}
	var5 = devAssert_upvr
	if 0 >= tbl.locationOffset.line then
		-- KONSTANTWARNING: GOTO [46] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 35. Error Block 25 start (CF ANALYSIS FAILED)
	var5(true, "line in locationOffset is 1-indexed and must be positive.")
	var5 = devAssert_upvr
	if 0 >= tbl.locationOffset.column then
	else
	end
	var5(true, "column in locationOffset is 1-indexed and must be positive.")
	var5 = setmetatable(tbl, tbl_upvr)
	do
		return var5
	end
	-- KONSTANTERROR: [45] 35. Error Block 25 end (CF ANALYSIS FAILED)
end
function tbl_upvr.__tostring(arg1) -- Line 61
	return "{table Source}"
end
local instanceOf_upvr = require(Parent.jsutils.instanceOf)
function isSource(arg1) -- Line 71
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_upvr)
end
return {
	Source = tbl_upvr;
	isSource = isSource;
}