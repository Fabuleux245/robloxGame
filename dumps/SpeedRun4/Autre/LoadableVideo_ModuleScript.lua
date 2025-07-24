-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:33
-- Luau version 6, Types version 3
-- Time taken: 0.003847 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local LoadingState_upvr = require(Parent_2.Enums.LoadingState)
local ContentProvider_upvr = game:GetService("ContentProvider")
local View_upvr = Foundation.View
local getFitSize_upvr = require(Parent_2.Utils.getFitSize)
local getCropSize_upvr = require(Parent_2.Utils.getCropSize)
local FFlagUseRbxStorageInCapturesCommon_upvr = require(Parent_2.Flags.FFlagUseRbxStorageInCapturesCommon)
local Skeleton_upvr = Foundation.Skeleton
return function(arg1) -- Line 38
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: LoadingState_upvr (readonly)
		[3]: ContentProvider_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: getFitSize_upvr (readonly)
		[6]: getCropSize_upvr (readonly)
		[7]: FFlagUseRbxStorageInCapturesCommon_upvr (readonly)
		[8]: Skeleton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local _, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(LoadingState_upvr.Loading)
	local _, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	React_upvr.useEffect(function() -- Line 43
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: ContentProvider_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: LoadingState_upvr (copied, readonly)
		]]
		if arg1.Video == nil or arg1.Video == "" then return end
		local any_Connect_result1_upvr = ContentProvider_upvr:GetAssetFetchStatusChangedSignal(arg1.Video):Connect(function(arg1_2) -- Line 49
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: LoadingState_upvr (copied, readonly)
			]]
			if arg1_2 == Enum.AssetFetchStatus.Failure then
				any_useState_result2_upvr(LoadingState_upvr.Failed)
			end
		end)
		return function() -- Line 55
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
				[3]: LoadingState_upvr (copied, readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_useState_result2_upvr(LoadingState_upvr.Loading)
		end
	end, {arg1.Video})
	local function _(arg1_4) -- Line 65
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		local Resolution = arg1_4.Resolution
		any_useState_result2_upvr_2(Resolution)
		if arg1.onResolutionChanged then
			arg1.onResolutionChanged(Resolution)
		end
	end
	local _ = {arg1.onResolutionChanged, any_useState_result2_upvr_2}
	local function _(arg1_5) -- Line 74
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: LoadingState_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		if any_useState_result1_upvr == LoadingState_upvr.Loading then
			any_useState_result2_upvr(LoadingState_upvr.Finished)
		end
		arg1.onLoaded(arg1_5)
	end
	local _ = {any_useState_result1_upvr, arg1.onLoaded}
	if any_useState_result1_upvr == LoadingState_upvr.Failed then
		return arg1.renderOnFailed()
	end
	local tbl = {
		AnchorPoint = arg1.AnchorPoint;
		BackgroundTransparency = arg1.BackgroundTransparency;
		ClipsDescendants = true;
		isDisabled = true;
		onAbsoluteSizeChanged = React_upvr.useCallback(function(arg1_3) -- Line 61
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_3 (readonly)
			]]
			any_useState_result2_upvr_3(arg1_3.AbsoluteSize)
		end, {any_useState_result2_upvr_3});
		Position = arg1.Position;
		Size = arg1.Size;
		ZIndex = arg1.ZIndex;
	}
	local tbl_2 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local var33 = 1
	tbl_2.BackgroundTransparency = var33
	if arg1.Looped ~= nil then
		var33 = arg1.Looped
	else
		var33 = true
	end
	tbl_2.Looped = var33
	tbl_2.Playing = arg1.Playing
	tbl_2.Position = UDim2.fromScale(0.5, 0.5)
	tbl_2.ref = arg1.videoRef
	if arg1.scaleType == Enum.ScaleType.Fit then
		-- KONSTANTWARNING: GOTO [192] #133
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [176] 121. Error Block 39 start (CF ANALYSIS FAILED)
	if arg1.scaleType == Enum.ScaleType.Crop then
		-- KONSTANTWARNING: GOTO [192] #133
	end
	-- KONSTANTERROR: [176] 121. Error Block 39 end (CF ANALYSIS FAILED)
end