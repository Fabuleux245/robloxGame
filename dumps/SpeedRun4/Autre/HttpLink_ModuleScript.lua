-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:31
-- Luau version 6, Types version 3
-- Time taken: 0.000946 seconds

local module = {}
local ApolloLink_upvr = require(script.Parent.Parent.core).ApolloLink
local setmetatable_result1_upvr = setmetatable({}, {
	__index = ApolloLink_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
local createHttpLink_upvr = require(script.Parent.createHttpLink).createHttpLink
function setmetatable_result1_upvr.new(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: ApolloLink_upvr (readonly)
		[2]: createHttpLink_upvr (readonly)
		[3]: setmetatable_result1_upvr (readonly)
	]]
	if arg1 == nil then
		local tbl = {}
	end
	local setmetatable_result1 = setmetatable(ApolloLink_upvr.new(createHttpLink_upvr(tbl).request), setmetatable_result1_upvr)
	setmetatable_result1.options = tbl
	return setmetatable_result1
end
module.HttpLink = setmetatable_result1_upvr
return module