-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:46
-- Luau version 6, Types version 3
-- Time taken: 0.001524 seconds

local Parent = script:FindFirstAncestor("CollectionViews").Parent
local React_upvr = require(Parent.React)
local Signal_upvr = require(Parent.AppCommonLib).Signal
return function(arg1) -- Line 18, Named "useCollectionImpressionsSignal"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Signal_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	if any_useRef_result1.current == nil then
		any_useRef_result1.current = Signal_upvr.new()
	end
	local current_upvr = any_useRef_result1.current
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = current_upvr
	React_upvr.useEffect(function() -- Line 25
		--[[ Upvalues[2]:
			[1]: current_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		current_upvr:fire()
		local var7_upvw
		if arg1 then
			var7_upvw = arg1:connect(function() -- Line 34
				--[[ Upvalues[1]:
					[1]: current_upvr (copied, readonly)
				]]
				current_upvr:fire()
			end)
		end
		return function() -- Line 39
			--[[ Upvalues[1]:
				[1]: var7_upvw (read and write)
			]]
			if var7_upvw then
				var7_upvw:disconnect()
			end
		end
	end, tbl)
	return current_upvr, React_upvr.useCallback(function() -- Line 46
		--[[ Upvalues[1]:
			[1]: current_upvr (readonly)
		]]
		current_upvr:fire()
	end, {current_upvr})
end