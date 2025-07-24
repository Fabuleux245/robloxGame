-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:12
-- Luau version 6, Types version 3
-- Time taken: 0.004617 seconds

local function _(arg1) -- Line 1, Named "makeJestCompatible"
	return function(arg1_2, ...) -- Line 2
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local arg1_result1_upvr = arg1(...)
		local module_4 = {
			pass = arg1_result1_upvr.pass;
		}
		local function message() -- Line 7
			--[[ Upvalues[1]:
				[1]: arg1_result1_upvr (readonly)
			]]
			return arg1_result1_upvr.message
		end
		module_4.message = message
		return module_4
	end
end
local module_2 = {}
local above_upvr = require(script.Parent.above)
function module_2.toBeAbove(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_8 = above_upvr(...)
	local module_10 = {
		pass = above_upvr_result1_upvr_8.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_8 (readonly)
		]]
		return above_upvr_result1_upvr_8.message
	end
	module_10.message = message
	return module_10
end
above_upvr = require(script.Parent.alignedHorizontally)
function module_2.toBeAlignedHorizontally(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_9 = above_upvr(...)
	local module_12 = {
		pass = above_upvr_result1_upvr_9.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_9 (readonly)
		]]
		return above_upvr_result1_upvr_9.message
	end
	module_12.message = message
	return module_12
end
above_upvr = require(script.Parent.alignedVertically)
function module_2.toBeAlignedVertically(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_4 = above_upvr(...)
	local module_5 = {
		pass = above_upvr_result1_upvr_4.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_4 (readonly)
		]]
		return above_upvr_result1_upvr_4.message
	end
	module_5.message = message
	return module_5
end
above_upvr = require(script.Parent.below)
function module_2.toBeBelow(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local var6_result1_upvr_3 = above_upvr(...)
	local module_6 = {
		pass = var6_result1_upvr_3.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr_3 (readonly)
		]]
		return var6_result1_upvr_3.message
	end
	module_6.message = message
	return module_6
end
above_upvr = require(script.Parent.inside)
function module_2.toBeInside(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_5 = above_upvr(...)
	local module_11 = {
		pass = above_upvr_result1_upvr_5.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_5 (readonly)
		]]
		return above_upvr_result1_upvr_5.message
	end
	module_11.message = message
	return module_11
end
above_upvr = require(script.Parent.insideAbove)
function module_2.toBeInsideAbove(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_3 = above_upvr(...)
	local module_8 = {
		pass = above_upvr_result1_upvr_3.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_3 (readonly)
		]]
		return above_upvr_result1_upvr_3.message
	end
	module_8.message = message
	return module_8
end
above_upvr = require(script.Parent.insideBelow)
function module_2.toBeInsideBelow(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_7 = above_upvr(...)
	local module_9 = {
		pass = above_upvr_result1_upvr_7.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_7 (readonly)
		]]
		return above_upvr_result1_upvr_7.message
	end
	module_9.message = message
	return module_9
end
above_upvr = require(script.Parent.insideLeftOf)
function module_2.toBeInsideLeftOf(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_6 = above_upvr(...)
	local module = {
		pass = above_upvr_result1_upvr_6.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr_6 (readonly)
		]]
		return above_upvr_result1_upvr_6.message
	end
	module.message = message
	return module
end
above_upvr = require(script.Parent.insideRightOf)
function module_2.toBeInsideRightOf(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local var6_result1_upvr_2 = above_upvr(...)
	local module_13 = {
		pass = var6_result1_upvr_2.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr_2 (readonly)
		]]
		return var6_result1_upvr_2.message
	end
	module_13.message = message
	return module_13
end
above_upvr = require(script.Parent.leftOf)
function module_2.toBeLeftOf(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local var6_result1_upvr = above_upvr(...)
	local module_3 = {
		pass = var6_result1_upvr.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: var6_result1_upvr (readonly)
		]]
		return var6_result1_upvr.message
	end
	module_3.message = message
	return module_3
end
above_upvr = require(script.Parent.rightOf)
function module_2.toBeRightOf(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr = above_upvr(...)
	local module_7 = {
		pass = above_upvr_result1_upvr.pass;
	}
	local function message() -- Line 7
		--[[ Upvalues[1]:
			[1]: above_upvr_result1_upvr (readonly)
		]]
		return above_upvr_result1_upvr.message
	end
	module_7.message = message
	return module_7
end
above_upvr = require(script.Parent.intersect)
function module_2.toIntersect(arg1, ...) -- Line 2
	--[[ Upvalues[1]:
		[1]: above_upvr (readonly)
	]]
	local above_upvr_result1_upvr_2 = above_upvr(...)
	return {
		pass = above_upvr_result1_upvr_2.pass;
		message = function() -- Line 7, Named "message"
			--[[ Upvalues[1]:
				[1]: above_upvr_result1_upvr_2 (readonly)
			]]
			return above_upvr_result1_upvr_2.message
		end;
	}
end
return module_2