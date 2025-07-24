-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:34
-- Luau version 6, Types version 3
-- Time taken: 0.002762 seconds

local Parent = script.Parent.Parent.Parent
local Foundation = require(Parent.Foundation)
local function _(arg1) -- Line 29, Named "formatTime"
	return string.format("%02d:%02d", math.floor(arg1 / 60), math.floor(arg1 % 60))
end
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local IconButton_upvr = Foundation.IconButton
local ButtonSize_upvr = Foundation.Enums.ButtonSize
local Text_upvr = Foundation.Text
return function(arg1) -- Line 35, Named "ProgressBar"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: IconButton_upvr (readonly)
		[4]: ButtonSize_upvr (readonly)
		[5]: Text_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local timePosition = arg1.timePosition
	local timeLength = arg1.timeLength
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	React_upvr.useEffect(function() -- Line 42
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if not any_useRef_result1_upvr or not any_useRef_result1_upvr.current then return end
		local any_Connect_result1_upvr = any_useRef_result1_upvr.current.InputBegan:Connect(function(arg1_2) -- Line 49
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(arg1_2.Position.X)
		end)
		return function() -- Line 53
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	local module = {}
	local tbl_3 = {}
	local tbl_4 = {
		Size = UDim2.fromScale(arg1.timePosition / arg1.timeLength, 1);
	}
	local var25 = "radius-small bg-system-neutral"
	tbl_4.tag = var25
	tbl_3.Progress = React_upvr.createElement(View_upvr, tbl_4)
	module.ProgressBarContainer = React_upvr.createElement(View_upvr, {
		LayoutOrder = 1;
		onActivated = React_upvr.useCallback(function() -- Line 58
			--[[ Upvalues[3]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: any_useState_result1_upvr (readonly)
			]]
			if not any_useRef_result1_upvr or not any_useRef_result1_upvr.current then
			else
				arg1.onProgressBarActivated((any_useState_result1_upvr - any_useRef_result1_upvr.current.AbsolutePosition.X) / any_useRef_result1_upvr.current.AbsoluteSize.X)
			end
		end, {any_useState_result1_upvr, arg1.onProgressBarActivated});
		ref = any_useRef_result1_upvr;
		tag = "radius-small bg-over-media-0 size-full-200";
	}, tbl_3)
	local tbl_2 = {}
	local tbl_6 = {}
	if arg1.isPlaying then
		var25 = "icons/controls/media-pause-medium"
	else
		var25 = "icons/controls/media-play-medium"
	end
	tbl_6.icon = var25
	var25 = false
	tbl_6.isDisabled = var25
	var25 = 1
	tbl_6.LayoutOrder = var25
	var25 = arg1.onPlayButtonActivated
	tbl_6.onActivated = var25
	var25 = ButtonSize_upvr.Medium
	tbl_6.size = var25
	tbl_2.PlayButton = React_upvr.createElement(IconButton_upvr, tbl_6)
	if arg1.isTimeHidden then
		-- KONSTANTWARNING: GOTO [207] #151
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [187] 136. Error Block 15 start (CF ANALYSIS FAILED)
	local tbl = {}
	var25 = 2
	tbl.LayoutOrder = var25
	var25 = string.format("%s / %s", string.format("%02d:%02d", math.floor(timePosition / 60), math.floor(timePosition % 60)), string.format("%02d:%02d", math.floor(timeLength / 60), math.floor(timeLength % 60)))
	tbl.Text = var25
	var25 = "auto-xy text-body-large"
	tbl.tag = var25
	tbl_2.TimeText = React_upvr.createElement(Text_upvr, tbl)
	local tbl_5 = {}
	if arg1.isMuted then
		var25 = "icons/controls/speakerMute"
	else
		var25 = "icons/controls/speaker"
	end
	tbl_5.icon = var25
	var25 = false
	tbl_5.isDisabled = var25
	var25 = 3
	tbl_5.LayoutOrder = var25
	var25 = arg1.onMuteButtonActivated
	tbl_5.onActivated = var25
	var25 = ButtonSize_upvr.Medium
	tbl_5.size = var25
	tbl_2.MuteButton = React_upvr.createElement(IconButton_upvr, tbl_5)
	module.CTAContainer = React_upvr.createElement(View_upvr, {
		LayoutOrder = 2;
		isDisabled = true;
		tag = "row flex-between align-x-center align-y-center size-full-1000";
	}, tbl_2)
	do
		return React_upvr.createElement(View_upvr, {
			tag = {
				["align-x-center align-y-center col size-full-1400"] = true;
				["margin-medium"] = arg1.isFullScreen;
				["margin-x-medium"] = not arg1.isFullScreen;
			};
		}, module)
	end
	-- KONSTANTERROR: [187] 136. Error Block 15 end (CF ANALYSIS FAILED)
end