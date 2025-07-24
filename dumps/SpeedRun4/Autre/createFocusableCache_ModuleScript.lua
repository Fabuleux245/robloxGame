-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:34
-- Luau version 6, Types version 3
-- Time taken: 0.002109 seconds

local function checkHostProperties_upvr(arg1) -- Line 3, Named "checkHostProperties"
	assert(Instance.new(arg1):IsA("GuiObject"))
end
local function _(arg1) -- Line 9, Named "isValidFocusable"
	--[[ Upvalues[1]:
		[1]: checkHostProperties_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "string" then
		local pcall_result1, _ = pcall(checkHostProperties_upvr, arg1)
		return pcall_result1
	end
	if typeof_result1 == "function" or typeof_result1 == "table" then
		return true
	end
	return false
end
local asFocusable_upvr = require(script.Parent.asFocusable)
return function() -- Line 25, Named "createFocusableCache"
	--[[ Upvalues[2]:
		[1]: checkHostProperties_upvr (readonly)
		[2]: asFocusable_upvr (readonly)
	]]
	local module_upvr = {}
	setmetatable(module_upvr, {
		__index = function(arg1, arg2) -- Line 29, Named "__index"
			--[[ Upvalues[3]:
				[1]: checkHostProperties_upvr (copied, readonly)
				[2]: asFocusable_upvr (copied, readonly)
				[3]: module_upvr (readonly)
			]]
			local typeof_result1_2 = typeof(arg2)
			local var8
			if typeof_result1_2 == "string" then
				local pcall_result1_2, _ = pcall(checkHostProperties_upvr, arg2)
				var8 = pcall_result1_2
			elseif typeof_result1_2 == "function" or typeof_result1_2 == "table" then
				var8 = true
			else
				var8 = false
			end
			if not var8 then
				var8 = error
				var8("Component "..tostring(arg2).." ("..typeof(arg2)..") is not a valid focusable component", 2)
			end
			var8 = asFocusable_upvr(arg2)
			module_upvr[arg2] = var8
			return var8
		end;
		__tostring = function(arg1) -- Line 39, Named "__tostring"
			local var15 = '{'
			for i, v in pairs(arg1) do
				var15 = "%s\n\t%s -> %s":format(var15, tostring(i), tostring(v))
			end
			return var15.."\n}"
		end;
	})
	return module_upvr
end