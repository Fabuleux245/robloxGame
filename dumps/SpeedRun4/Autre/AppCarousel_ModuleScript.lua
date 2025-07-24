-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:22
-- Luau version 6, Types version 3
-- Time taken: 0.001686 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("AppCarousel")
local FFlagAXRefactorCatalogItemCard_upvr = require(Parent.AvatarExperienceFlags).FFlagAXRefactorCatalogItemCard
function any_extend_result1.render(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagAXRefactorCatalogItemCard_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	local carouselHeight = arg1.props.carouselHeight
	local module_2 = {
		Size = UDim2.new(1, 0, 0, carouselHeight);
	}
	local var10
	if FFlagAXRefactorCatalogItemCard_upvr and arg1.props.shouldExpandToFitContentHeight then
		var10 = Enum.AutomaticSize.Y
	else
		var10 = nil
	end
	module_2.AutomaticSize = var10
	var10 = 0
	module_2.ScrollBarThickness = var10
	var10 = 1
	module_2.BackgroundTransparency = var10
	var10 = false
	module_2.ClipsDescendants = var10
	var10 = UDim2.new(0, arg1.props.canvasWidth, 0, carouselHeight)
	module_2.CanvasSize = var10
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [77] 51. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if arg1.props.shouldExpandToFitContentHeight then
		var10 = Enum.AutomaticSize.Y
	else
		-- KONSTANTERROR: [81] 54. Error Block 9 start (CF ANALYSIS FAILED)
		var10 = nil
		-- KONSTANTERROR: [81] 54. Error Block 9 end (CF ANALYSIS FAILED)
	end
	module_2.AutomaticCanvasSize = var10
	module_2.CanvasPosition = arg1.props.canvasPosition
	module_2.ScrollingEnabled = not arg1.props.scrollingAnimationActive
	var10 = Enum.ScrollingDirection.X
	module_2.ScrollingDirection = var10
	var10 = Enum.ElasticBehavior.Always
	module_2.ElasticBehavior = var10
	var10 = false
	module_2.Selectable = var10
	var10 = Roact_upvr.Change.CanvasPosition
	module_2[var10] = arg1.props.onChangeCanvasPosition
	var10 = Roact_upvr.Ref
	module_2[var10] = arg1.props.onRefCallback
	var10 = arg1.props.items
	do
		return Roact_upvr.createElement("ScrollingFrame", module_2, var10)
	end
	-- KONSTANTERROR: [77] 51. Error Block 17 end (CF ANALYSIS FAILED)
end
return any_extend_result1