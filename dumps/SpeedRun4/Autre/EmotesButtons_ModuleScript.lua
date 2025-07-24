-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:26
-- Luau version 6, Types version 3
-- Time taken: 0.003267 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local Actions = Parent.Actions
local Constants_upvr = require(Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmotesButtons")
local function _(arg1, arg2) -- Line 24, Named "positionInsideOuterCircle"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var7 = arg1.AbsoluteSize.X / 2
	local var8 = false
	if var7 * Constants_upvr.InnerCircleSizeRatio < arg2.Magnitude then
		if arg2.Magnitude >= var7 then
			var8 = false
		else
			var8 = true
		end
	end
	return var8
end
local GetSegmentFromPosition_upvr = require(Parent.Utility.GetSegmentFromPosition)
local function getSegmentFromInput_upvr(arg1, arg2) -- Line 31, Named "getSegmentFromInput"
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: GetSegmentFromPosition_upvr (readonly)
	]]
	local var10 = Vector2.new(arg2.Position.X, arg2.Position.Y) - arg1.AbsolutePosition - arg1.AbsoluteSize / 2
	local vector2 = Vector2.new(var10.X, -var10.Y)
	local var12 = vector2
	local var13 = arg1.AbsoluteSize.X / 2
	local var14 = false
	if var13 * Constants_upvr.InnerCircleSizeRatio < var12.Magnitude then
		if var12.Magnitude >= var13 then
			var14 = false
		else
			var14 = true
		end
	end
	if not var14 then
		return 0
	end
	return GetSegmentFromPosition_upvr(vector2)
end
local function _(arg1) -- Line 47, Named "getRandomAssetId"
	if #arg1 == 0 then return end
	return arg1[math.random(1, #arg1)]
end
local function _(arg1) -- Line 56, Named "getEmoteImage"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	return Constants_upvr.EmotesImage:format(arg1)
end
function any_extend_result1.render(arg1) -- Line 60
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: getSegmentFromInput_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg1.props.emotesPage.currentEmotes)
	local var18
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 20. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [34.7]
	local var19 = 360 / Constants_upvr.EmotesPerPage * (nil - 1) + Constants_upvr.SegmentsStartRotation
	local var20 = Constants_upvr.InnerCircleSizeRatio / 2
	local var21 = (1 - Constants_upvr.InnerCircleSizeRatio) / 2 - Constants_upvr.SlotNumberSize - Constants_upvr.ImageOutsidePadding
	local var22 = var21 / 2 + Constants_upvr.SlotNumberSize - Constants_upvr.ImageOutsidePadding / 2
	local cosine = math.cos(math.rad(var19))
	local sine = math.sin(math.rad(var19))
	var18 = 0.5 + var20 * sine
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [95.9]
	if #nil == 0 then
		var18 = nil
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		var18 = nil[math.random(1, #nil)]
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({})[nil] = Roact_upvr.createElement("ImageLabel", {
		Image = Constants_upvr.EmotesImage:format(var18);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5 + var20 * cosine + var22 * cosine, 0, var18 + var22 * sine, 0);
		Size = UDim2.new(var21, 0, var21, 0);
		BackgroundTransparency = 1;
		ZIndex = 2;
	}, {
		AsspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
			AspectRatio = 1;
		});
	})
	-- KONSTANTERROR: [30] 20. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 12. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 12. Error Block 2 end (CF ANALYSIS FAILED)
end
local PlayEmote_upvr = require(Parent.Thunks.PlayEmote)
local FocusSegment_upvr = require(Actions.FocusSegment)
local HideMenu_upvr = require(Actions.HideMenu)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 162, Named "mapStateToProps"
	return {
		displayOptions = arg1.displayOptions;
		emotesPage = arg1.emotesPage;
		emotesWheel = arg1.emotesWheel;
	}
end, function(arg1) -- Line 170, Named "mapDispatchToProps"
	--[[ Upvalues[3]:
		[1]: PlayEmote_upvr (readonly)
		[2]: FocusSegment_upvr (readonly)
		[3]: HideMenu_upvr (readonly)
	]]
	return {
		playEmote = function(arg1_2, arg2, arg3) -- Line 172, Named "playEmote"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PlayEmote_upvr (copied, readonly)
			]]
			return arg1(PlayEmote_upvr(arg1_2, arg2, arg3))
		end;
		focusSegment = function(arg1_3) -- Line 176, Named "focusSegment"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: FocusSegment_upvr (copied, readonly)
			]]
			return arg1(FocusSegment_upvr(arg1_3))
		end;
		hideMenu = function() -- Line 180, Named "hideMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HideMenu_upvr (copied, readonly)
			]]
			return arg1(HideMenu_upvr())
		end;
	}
end)(any_extend_result1)