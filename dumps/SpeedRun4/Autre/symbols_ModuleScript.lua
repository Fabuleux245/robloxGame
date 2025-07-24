-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:36
-- Luau version 6, Types version 3
-- Time taken: 0.001938 seconds

local function _(arg1) -- Line 1, Named "newSymbol"
	local newproxy_result1_4 = newproxy(true)
	local formatted_upvw_3 = "Mocks.%s":format(arg1)
	getmetatable(newproxy_result1_4).__tostring = function() -- Line 4
		--[[ Upvalues[1]:
			[1]: formatted_upvw_3 (read and write)
		]]
		return formatted_upvw_3
	end
	return newproxy_result1_4
end
local module = {}
local newproxy_result1_9 = newproxy(true)
local formatted_upvw_12 = "Mocks.%s":format("Calls")
getmetatable(newproxy_result1_9).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_12 (read and write)
	]]
	return formatted_upvw_12
end
module.Calls = newproxy_result1_9
local newproxy_result1_11 = newproxy(true)
local formatted_upvw_14 = "Mocks.%s":format("Children")
getmetatable(newproxy_result1_11).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_14 (read and write)
	]]
	return formatted_upvw_14
end
module.Children = newproxy_result1_11
local newproxy_result1 = newproxy(true)
local formatted_upvw_6 = "Mocks.%s":format("None")
getmetatable(newproxy_result1).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_6 (read and write)
	]]
	return formatted_upvw_6
end
module.None = newproxy_result1
local newproxy_result1_6 = newproxy(true)
local formatted_upvw_2 = "Mocks.%s":format("ReturnValue")
getmetatable(newproxy_result1_6).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_2 (read and write)
	]]
	return formatted_upvw_2
end
module.ReturnValue = newproxy_result1_6
local newproxy_result1_7 = newproxy(true)
local formatted_upvw_9 = "Mocks.%s":format("Name")
getmetatable(newproxy_result1_7).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_9 (read and write)
	]]
	return formatted_upvw_9
end
module.Name = newproxy_result1_7
local newproxy_result1_12 = newproxy(true)
local formatted_upvw_5 = "Mocks.%s":format("Address")
getmetatable(newproxy_result1_12).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_5 (read and write)
	]]
	return formatted_upvw_5
end
module.Address = newproxy_result1_12
local newproxy_result1_8 = newproxy(true)
local formatted_upvw_7 = "Mocks.%s":format("Operations")
getmetatable(newproxy_result1_8).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_7 (read and write)
	]]
	return formatted_upvw_7
end
module.Operations = newproxy_result1_8
local newproxy_result1_3 = newproxy(true)
local formatted_upvw_11 = "Mocks.%s":format("Spec")
getmetatable(newproxy_result1_3).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_11 (read and write)
	]]
	return formatted_upvw_11
end
module.Spec = newproxy_result1_3
local newproxy_result1_2 = newproxy(true)
local formatted_upvw_13 = "Mocks.%s":format("SideEffect")
getmetatable(newproxy_result1_2).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_13 (read and write)
	]]
	return formatted_upvw_13
end
module.SideEffect = newproxy_result1_2
local newproxy_result1_14 = newproxy(true)
local formatted_upvw = "Mocks.%s":format("isSpy")
getmetatable(newproxy_result1_14).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw (read and write)
	]]
	return formatted_upvw
end
module.isSpy = newproxy_result1_14
local newproxy_result1_5 = newproxy(true)
local formatted_upvw_4 = "Mocks.%s":format("isTuple")
getmetatable(newproxy_result1_5).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_4 (read and write)
	]]
	return formatted_upvw_4
end
module.isTuple = newproxy_result1_5
local newproxy_result1_13 = newproxy(true)
local formatted_upvw_10 = "Mocks.%s":format("isMagicMock")
getmetatable(newproxy_result1_13).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_10 (read and write)
	]]
	return formatted_upvw_10
end
module.isMagicMock = newproxy_result1_13
local newproxy_result1_10 = newproxy(true)
local formatted_upvw_8 = "Mocks.%s":format("isPredicate")
getmetatable(newproxy_result1_10).__tostring = function() -- Line 4
	--[[ Upvalues[1]:
		[1]: formatted_upvw_8 (read and write)
	]]
	return formatted_upvw_8
end
module.isPredicate = newproxy_result1_10
return module