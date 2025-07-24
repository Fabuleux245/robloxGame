-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:58
-- Luau version 6, Types version 3
-- Time taken: 0.001399 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local module = {}
local React_upvr = require(Parent_2.React)
local function _(arg1) -- Line 81, Named "_getLength"
	return function(arg1_2) -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1 then
			return arg1_2.X
		end
		return arg1_2.Y
	end
end
local Promise_upvr = require(Parent_2.Promise)
local useState_upvr = React_upvr.useState
local useRef_upvr = React_upvr.useRef
local FlatList_upvr = require(script.Parent.FlatList)
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local View_upvr = require(Parent.Components.View.View)
module.BidirectionalFlatList = React_upvr.forwardRef(function(arg1, arg2) -- Line 98
	--[[ Upvalues[7]:
		[1]: Promise_upvr (readonly)
		[2]: useState_upvr (readonly)
		[3]: useRef_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: FlatList_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: View_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 62 start (CF ANALYSIS FAILED)
	local function _() -- Line 99, Named "promiseFn"
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve()
	end
	if arg1.activityIndicatorColor == nil then
	else
	end
	if arg1.autoscrollToTopThreshold == nil then
		-- KONSTANTWARNING: GOTO [18] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 62 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 71 start (CF ANALYSIS FAILED)
	if arg1.onEndReached == nil then
		-- KONSTANTWARNING: GOTO [38] #24
	end
	-- KONSTANTERROR: [16] 12. Error Block 71 end (CF ANALYSIS FAILED)
end)
return module