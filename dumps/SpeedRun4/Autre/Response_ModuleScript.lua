-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:29
-- Luau version 6, Types version 3
-- Time taken: 0.001179 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {}
	module.body = arg1
	setmetatable(module, module_upvr)
	return module
end
local Promise_upvr = require(Parent.Promise)
local stringify_upvr = require(Parent.GraphQL).stringify
local Error_upvr = require(Parent.LuauPolyfill).Error
function module_upvr.text(arg1) -- Line 28
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: stringify_upvr (readonly)
		[3]: Error_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 29
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: stringify_upvr (copied, readonly)
			[3]: Error_upvr (copied, readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 30
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: stringify_upvr (copied, readonly)
			]]
			if arg1.body.errors then
				for i, v in arg1.body.errors do
					if type(v) == "table" and v.name == "GraphQLError" then
						arg1.body.errors[i] = {
							message = v.message;
							locations = v.locations;
							extensions = v.extensions;
							path = v.path;
						}
					end
				end
			end
			return stringify_upvr(arg1.body)
		end)
		if pcall_result1 then
			arg1_2(pcall_result2)
		else
			arg2(Error_upvr.new(pcall_result2))
		end
	end)
end
return module_upvr