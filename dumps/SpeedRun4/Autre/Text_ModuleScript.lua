-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:50
-- Luau version 6, Types version 3
-- Time taken: 0.002904 seconds

local module_upvr = {
	_TEMP_PATCHED_PADDING = Vector2.new(0, 0);
}
if not game:GetEngineFeature("TextBoundsRoundUp") then
	module_upvr._TEMP_PATCHED_PADDING = Vector2.new(2, 2)
end
local TextService_upvr = game:GetService("TextService")
function module_upvr.GetTextBounds(arg1, arg2, arg3, arg4) -- Line 19
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return TextService_upvr:GetTextSize(arg1, arg3, arg2, arg4) + module_upvr._TEMP_PATCHED_PADDING
end
function module_upvr.GetTextWidth(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.GetTextBounds(arg1, arg2, arg3, Vector2.new(10000, 10000)).X
end
function module_upvr.GetTextHeight(arg1, arg2, arg3, arg4) -- Line 27
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.GetTextBounds(arg1, arg2, arg3, Vector2.new(arg4, 10000)).Y
end
function module_upvr.Truncate(arg1, arg2, arg3, arg4, arg5) -- Line 32
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg4 < module_upvr.GetTextWidth(arg1, arg2, arg3) then
		for _, v in utf8.graphemes(arg1) do
			if arg4 < module_upvr.GetTextWidth(string.sub(arg1, 1, v)..(arg5 or ""), arg2, arg3) then
				return ""
			end
		end
	else
		return arg1
	end
	return ""
end
function module_upvr.TruncateTextLabel(arg1, arg2) -- Line 52
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.Text = module_upvr.Truncate(arg1.Text, arg1.Font, arg1.TextSize, arg1.AbsoluteSize.X, arg2)
end
function module_upvr.Trim(arg1) -- Line 58
	if type(arg1) ~= "string" then
		error(string.format("Text.Trim called on non-string type %s.", type(arg1)), 2)
	end
	return arg1:gsub("^%s*(.-)%s*$", "%1")
end
function module_upvr.RightTrim(arg1) -- Line 66
	if type(arg1) ~= "string" then
		error(string.format("Text.RightTrim called on non-string type %s.", type(arg1)), 2)
	end
	return arg1:gsub("%s+$", "")
end
function module_upvr.LeftTrim(arg1) -- Line 74
	if type(arg1) ~= "string" then
		error(string.format("Text.LeftTrim called on non-string type %s.", type(arg1)), 2)
	end
	return arg1:gsub("^%s+", "")
end
function module_upvr.SpaceNormalize(arg1) -- Line 82
	if type(arg1) ~= "string" then
		error(string.format("Text.SpaceNormalize called on non-string type %s.", type(arg1)), 2)
	end
	return arg1:gsub("%s+", ' '):gsub("^%s+", ""):gsub("%s+$", "")
end
function module_upvr.Split(arg1, arg2) -- Line 90
	local var9
	if type(arg1) ~= "string" then
		var9 = string.format("Text.Split called on non-string type %s.", type(arg1))
		error(var9, 2)
	else
		var9 = arg2
		if type(var9) ~= "string" then
			var9 = string.format("Text.Split called with a pattern that is non-string type %s.", type(arg2))
			error(var9, 2)
		elseif arg2 == "" then
			var9 = "Text.Split called with an empty pattern."
			error(var9, 2)
		end
	end
	local module = {}
	var9 = 1
	while true do
		local string_find_result1, string_find_result2 = string.find(arg1, arg2, var9, true)
		if not string_find_result1 then break end
		if not string_find_result2 then break end
		table.insert(module, string.sub(arg1, var9, string_find_result1 - 1))
		var9 = string_find_result2 + 1
	end
	table.insert(module, string.sub(arg1, var9, string.len(arg1)))
	return module
end
return module_upvr