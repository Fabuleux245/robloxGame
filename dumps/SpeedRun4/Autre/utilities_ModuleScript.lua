-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:26
-- Luau version 6, Types version 3
-- Time taken: 0.001854 seconds

local Parent = script.Parent.Parent.Parent
local InputType_upvr = require(Parent.Enums.InputType)
local Cryo_upvr = require(Parent.Parent.Cryo)
local module = {}
local function _(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: InputType_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: InputType_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		local icon_3 = arg1_2.icon
		if typeof(icon_3) == "string" or typeof(icon_3) == "table" and icon_3.Image then
		else
			if typeof(icon_3) == "EnumItem" or 0 < #icon_3 and typeof(icon_3[1]) == "EnumItem" and arg1 == InputType_upvr.MouseAndKeyboard then
				return arg1_2
			end
			if icon_3[arg1] then
				return Cryo_upvr.Dictionary.join(arg1_2, {
					icon = icon_3[arg1];
				})
			end
		end
	end
end
function module.filterItems(arg1, arg2) -- Line 35
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: InputType_upvr (readonly)
	]]
	local any_filter_result1 = Cryo_upvr.List.filter(arg1, function(arg1_3, arg2_2) -- Line 37
		local icon_4 = arg1_3.icon
		local var15 = true
		if typeof(icon_4) ~= "string" then
			var15 = false
			if typeof(icon_4) == "table" then
				var15 = icon_4.Image
			end
		end
		return var15
	end)
	if not arg2 then
		return any_filter_result1
	end
	assert(arg2, "Assert inputType not nil at this point to silence type checker")
	return Cryo_upvr.List.join(any_filter_result1, Cryo_upvr.List.filterMap(arg1, function(arg1_4, arg2_3) -- Line 11
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: InputType_upvr (copied, readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		local icon_2 = arg1_4.icon
		if typeof(icon_2) == "string" or typeof(icon_2) == "table" and icon_2.Image then
		else
			if typeof(icon_2) == "EnumItem" or 0 < #icon_2 and typeof(icon_2[1]) == "EnumItem" and arg2 == InputType_upvr.MouseAndKeyboard then
				return arg1_4
			end
			if icon_2[arg2] then
				return Cryo_upvr.Dictionary.join(arg1_4, {
					icon = icon_2[arg2];
				})
			end
		end
	end))
end
return module