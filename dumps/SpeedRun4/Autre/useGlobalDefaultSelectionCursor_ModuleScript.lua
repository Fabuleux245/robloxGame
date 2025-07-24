-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:58
-- Luau version 6, Types version 3
-- Time taken: 0.001046 seconds

local Parent = script:FindFirstAncestor("FocusNavigationUtils").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useCursor_upvr = require(Parent.UIBlox).App.SelectionCursor.useCursor
local React_upvr = require(Parent.React)
local CoreGui_upvr = game:GetService("CoreGui")
return function() -- Line 10, Named "useGlobalDefaultSelectionCursor"
	--[[ Upvalues[4]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useCursor_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
	]]
	local var2_result1 = useDesignTokens_upvr(function(arg1) -- Line 11
		return {
			width = arg1.Global.Size_25;
			radius = UDim.new(0, arg1.Semantic.Radius.Medium);
			offset = arg1.Global.Space_25;
		}
	end)
	local radius_upvr = var2_result1.radius
	local useCursor_upvr_result1 = useCursor_upvr(radius_upvr, var2_result1.offset, var2_result1.width)
	if useCursor_upvr_result1 then
		radius_upvr = useCursor_upvr_result1.current
	else
		radius_upvr = nil
	end
	React_upvr.useEffect(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: CoreGui_upvr (copied, readonly)
			[2]: radius_upvr (readonly)
		]]
		if CoreGui_upvr.SelectionImageObject == nil and radius_upvr ~= nil then
			CoreGui_upvr.SelectionImageObject = radius_upvr
			return function() -- Line 26
				--[[ Upvalues[1]:
					[1]: CoreGui_upvr (copied, readonly)
				]]
				CoreGui_upvr.SelectionImageObject = nil
			end
		end
		return nil
	end, {radius_upvr})
end