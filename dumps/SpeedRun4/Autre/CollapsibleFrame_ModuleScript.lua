-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:57
-- Luau version 6, Types version 3
-- Time taken: 0.001950 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local ReactOtter_upvr = require(Songbird.Parent.ReactOtter)
local tbl_upvr = {
	stiffness = 300;
	damping = 30;
	mass = 1;
}
;({}).isCollapsed = false
local usePrevious_upvr = require(Songbird.Parent.ReactUtils).usePrevious
local useBinding_upvr = React_upvr.useBinding
local useAnimatedBinding_upvr = ReactOtter_upvr.useAnimatedBinding
local useCallback_upvr = React_upvr.useCallback
local useEffect_upvr = React_upvr.useEffect
local Foundation_upvr = require(Songbird.Parent.Foundation)
return function(arg1) -- Line 31, Named "CollapsibleFrame"
	--[[ Upvalues[9]:
		[1]: usePrevious_upvr (readonly)
		[2]: useBinding_upvr (readonly)
		[3]: useAnimatedBinding_upvr (readonly)
		[4]: useCallback_upvr (readonly)
		[5]: useEffect_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: Foundation_upvr (readonly)
	]]
	local var5_result1_upvr = usePrevious_upvr(arg1.isCollapsed)
	local var12 = math.huge
	local var6_result1, useBinding_upvr_result2_upvr = useBinding_upvr(Vector2.new(math.huge, var12))
	if arg1.isCollapsed then
		var12 = 0
	else
		var12 = 1
	end
	local useAnimatedBinding_upvr_result1, var7_result2_upvr = useAnimatedBinding_upvr(var12)
	useEffect_upvr(function() -- Line 40
		--[[ Upvalues[5]:
			[1]: var5_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: var7_result2_upvr (readonly)
			[4]: ReactOtter_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
		]]
		if var5_result1_upvr ~= nil then
			if not arg1.isCollapsed and var5_result1_upvr then
				var7_result2_upvr(ReactOtter_upvr.spring(1, tbl_upvr))
				return
			end
			if arg1.isCollapsed and not var5_result1_upvr then
				var7_result2_upvr(ReactOtter_upvr.spring(0, tbl_upvr))
			end
		end
	end, {arg1.isCollapsed, var5_result1_upvr})
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full clip";
		sizeConstraint = {
			MaxSize = React_upvr.joinBindings({
				maxSize = var6_result1;
				alpha = useAnimatedBinding_upvr_result1;
			}):map(function(arg1_3) -- Line 53
				return Vector2.new(math.huge, math.max(arg1_3.maxSize.Y * arg1_3.alpha, 0))
			end);
		};
	}, {
		ScrollingFrame = React_upvr.createElement("ScrollingFrame", {
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			CanvasSize = UDim2.fromScale(0, 0);
			AutomaticCanvasSize = Enum.AutomaticSize.XY;
			ClipsDescendants = true;
			ScrollingEnabled = false;
			HorizontalScrollBarInset = Enum.ScrollBarInset.None;
			ScrollBarImageTransparency = 1;
			[React_upvr.Change.AbsoluteCanvasSize] = useCallback_upvr(function(arg1_2) -- Line 36
				--[[ Upvalues[1]:
					[1]: useBinding_upvr_result2_upvr (readonly)
				]]
				useBinding_upvr_result2_upvr(arg1_2.AbsoluteCanvasSize)
			end, {});
		}, {
			Container = React_upvr.createElement(Foundation_upvr.View, {
				tag = "auto-y size-full-0";
			}, arg1.children);
		});
	})
end