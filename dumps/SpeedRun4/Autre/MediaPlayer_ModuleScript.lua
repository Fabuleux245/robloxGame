-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:33
-- Luau version 6, Types version 3
-- Time taken: 0.016285 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Foundation_upvr = require(Parent.Foundation)
local function _(arg1) -- Line 51, Named "getCurrent"
	if typeof(arg1) == "table" and arg1.current ~= nil then
		return arg1.current
	end
	return nil
end
local React_upvr = require(Parent.React)
local RunService_upvr = game:GetService("RunService")
local View_upvr = Foundation_upvr.View
local StateLayerAffordance_upvr = Foundation_upvr.Enums.StateLayerAffordance
local IconButton_upvr = Foundation_upvr.IconButton
local ButtonSize_upvr = Foundation_upvr.Enums.ButtonSize
local LoadableVideo_upvr = require(Parent_2.Components.LoadableVideo)
local Text_upvr = Foundation_upvr.Text
local ProgressBar_upvr = require(Parent_2.Components.ProgressBar)
local Image_upvr = Foundation_upvr.Image
return function(arg1) -- Line 58, Named "MediaPlayer"
	--[[ Upvalues[11]:
		[1]: React_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: StateLayerAffordance_upvr (readonly)
		[5]: IconButton_upvr (readonly)
		[6]: ButtonSize_upvr (readonly)
		[7]: LoadableVideo_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: ProgressBar_upvr (readonly)
		[10]: Foundation_upvr (readonly)
		[11]: Image_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 95 start (CF ANALYSIS FAILED)
	local any_useState_result1_upvr_4, any_useState_result2_upvr_12 = React_upvr.useState(0)
	local any_useState_result1_upvr_9, any_useState_result2_upvr_5 = React_upvr.useState(0)
	local any_useState_result1_upvr_10, any_useState_result2_upvr_7 = React_upvr.useState(false)
	local any_useState_result1_upvr_8, any_useState_result2_upvr_6 = React_upvr.useState(false)
	local any_useState_result1_upvr_6, any_useState_result2_upvr_8 = React_upvr.useState(false)
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState(true)
	React_upvr.useEffect(function() -- Line 66
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr_7 (readonly)
			[3]: RunService_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_12 (readonly)
		]]
		local videoRef_9 = arg1.videoRef
		local var98_upvr
		if typeof(videoRef_9) == "table" and videoRef_9.current ~= nil then
			var98_upvr = videoRef_9.current
		else
			var98_upvr = nil
		end
		if not var98_upvr then return end
		local any_Connect_result1_upvr = RunService_upvr.RenderStepped:Connect(function() -- Line 80
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_12 (copied, readonly)
				[2]: var98_upvr (readonly)
			]]
			any_useState_result2_upvr_12(var98_upvr.TimePosition)
		end)
		local any_Connect_result1_upvr_6 = var98_upvr.Played:Connect(function() -- Line 72
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_7 (copied, readonly)
			]]
			any_useState_result2_upvr_7(false)
		end)
		local any_Connect_result1_upvr_2 = var98_upvr.Ended:Connect(function() -- Line 76
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_7 (copied, readonly)
			]]
			any_useState_result2_upvr_7(true)
		end)
		return function() -- Line 84
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_6 (readonly)
				[3]: any_Connect_result1_upvr_2 (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_Connect_result1_upvr_6:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
		end
	end, {arg1.videoRef, any_useState_result1_upvr_3, any_useState_result1_upvr_10})
	local var127
	if not arg1.Playing then
		var127 = arg1.thumbnailImage
		if var127 ~= nil then
			var127 = arg1.thumbnailImage
			if var127 == "" then
			else
			end
		end
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var127 = arg1.VideoContent
		return var127
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var127 = arg1.Playing
		return var127
	end
	if arg1.Video or INLINED_3() or arg1.Playing == nil or not INLINED_4() then
		var127 = not arg1.thumbnailImage
	end
	local module_3 = {}
	local videoRef_7 = arg1.videoRef
	local var132
	if typeof(videoRef_7) == "table" and videoRef_7.current ~= nil then
		var132 = videoRef_7.current
	else
		var132 = nil
	end
	if var132 ~= nil then
		var132 = arg1.onExpandCallback
		if var132 then
			var132 = arg1.isZooming
			if not var132 and not any_useState_result1_upvr_3 then
				var132 = arg1.isOverlayDisabled
				local var133
				if not var132 then
					var132 = React_upvr
					var132 = View_upvr
					local _ = {
						tag = "anchor-top-center position-top-center size-full-0 auto-y margin-medium row align-x-right";
						ZIndex = 3;
					}
					local tbl_15 = {}
					if any_useState_result1_upvr_6 then
						var133 = "icons/actions/previewShrink"
					else
						var133 = "icons/actions/previewExpand"
					end
					tbl_15.icon = var133
					var133 = false
					tbl_15.isDisabled = var133
					var133 = 1
					tbl_15.LayoutOrder = var133
					tbl_15.onActivated = React_upvr.useCallback(function() -- Line 123
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: any_useState_result2_upvr_8 (readonly)
							[3]: any_useState_result1_upvr_6 (readonly)
						]]
						if arg1.onExpandCallback then
							arg1.onExpandCallback()
						end
						any_useState_result2_upvr_8(not any_useState_result1_upvr_6)
					end, {any_useState_result1_upvr_6, arg1.onExpandCallback})
					var133 = ButtonSize_upvr.Medium
					tbl_15.size = var133
					;({}).ExpandButton = React_upvr.createElement(IconButton_upvr, tbl_15)
					-- KONSTANTWARNING: GOTO [262] #188
				end
			end
		end
	end
	module_3.HeaderBarContainer = nil
	if var127 then
		var132 = React_upvr
		var132 = LoadableVideo_upvr
		local _ = {
			AnchorPoint = arg1.AnchorPoint;
			BackgroundTransparency = arg1.BackgroundTransparency;
			cornerRadius = arg1.cornerRadius;
			Looped = arg1.Looped;
			onLoaded = React_upvr.useCallback(function(arg1_4) -- Line 91
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: any_useState_result2_upvr_5 (readonly)
				]]
				local videoRef_12 = arg1.videoRef
				local var109
				if typeof(videoRef_12) == "table" and videoRef_12.current ~= nil then
					var109 = videoRef_12.current
				else
					var109 = nil
				end
				if not var109 then
				else
					any_useState_result2_upvr_5(var109.TimeLength)
					arg1.onLoaded(arg1_4)
				end
			end, {arg1.onLoaded, arg1.videoRef});
			Playing = arg1.Playing;
			Position = arg1.Position;
			renderOnFailed = arg1.renderOnFailed;
			scaleType = arg1.scaleType;
			Size = arg1.Size;
			Video = arg1.Video;
			VideoContent = arg1.VideoContent;
			videoRef = arg1.videoRef;
		}
		-- KONSTANTWARNING: GOTO [346] #239
	end
	module_3.VideoPreview = React_upvr.createElement(View_upvr, {
		tag = "align-x-center align-y-center auto-xy items-center gap-medium";
	}, {
		Text = React_upvr.createElement(Text_upvr, {
			Text = "No video to display";
			tag = "auto-xy";
		});
	})
	local videoRef_6 = arg1.videoRef
	local var142
	if typeof(videoRef_6) == "table" and videoRef_6.current ~= nil then
		var142 = videoRef_6.current
	else
		var142 = nil
	end
	if var142 ~= nil then
		var142 = arg1.isZooming
		if not var142 and not any_useState_result1_upvr_3 then
			var142 = arg1.isOverlayDisabled
			if not var142 then
				var142 = React_upvr
				var142 = View_upvr
				local _ = {
					tag = "anchor-bottom-center position-bottom-center size-full-0 auto-y";
					ZIndex = 3;
				}
				;({}).ProgressBar = React_upvr.createElement(ProgressBar_upvr, {
					isMuted = any_useState_result1_upvr_8;
					isPlaying = not any_useState_result1_upvr_10;
					isTimeHidden = arg1.isTimeHidden;
					onMuteButtonActivated = React_upvr.useCallback(function() -- Line 140
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: any_useState_result1_upvr_8 (readonly)
							[3]: any_useState_result2_upvr_6 (readonly)
						]]
						-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
						if arg1.onMuteCallback then
							arg1.onMuteCallback()
						end
						local videoRef_4 = arg1.videoRef
						local var125
						if typeof(videoRef_4) == "table" and videoRef_4.current ~= nil then
							var125 = videoRef_4.current
						else
							var125 = nil
						end
						if not var125 then
						else
							if any_useState_result1_upvr_8 then
							else
							end
							var125.Volume = 0
							any_useState_result2_upvr_6(not any_useState_result1_upvr_8)
						end
					end, {any_useState_result1_upvr_8, arg1.onMuteCallback, arg1.videoRef});
					onPlayButtonActivated = React_upvr.useCallback(function() -- Line 105
						--[[ Upvalues[5]:
							[1]: arg1 (readonly)
							[2]: any_useState_result1_upvr_10 (readonly)
							[3]: any_useState_result2_upvr_7 (readonly)
							[4]: any_useState_result1_upvr_4 (readonly)
							[5]: any_useState_result1_upvr_9 (readonly)
						]]
						local videoRef_5 = arg1.videoRef
						local var115
						if typeof(videoRef_5) == "table" and videoRef_5.current ~= nil then
							var115 = videoRef_5.current
						else
							var115 = nil
						end
						if not var115 then
						else
							if not any_useState_result1_upvr_10 then
								var115:Pause()
								any_useState_result2_upvr_7(true)
								return
							end
							if math.abs(any_useState_result1_upvr_4 - any_useState_result1_upvr_9) <= 0.1 then
								var115.TimePosition = 0
							end
							var115:Play()
							any_useState_result2_upvr_7(false)
						end
					end, {any_useState_result1_upvr_10, arg1.videoRef, any_useState_result1_upvr_4, any_useState_result1_upvr_9});
					onProgressBarActivated = React_upvr.useCallback(function(arg1_5) -- Line 131
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						local videoRef_3 = arg1.videoRef
						local var121
						if typeof(videoRef_3) == "table" and videoRef_3.current ~= nil then
							var121 = videoRef_3.current
						else
							var121 = nil
						end
						if not var121 then
						else
							var121.TimePosition = var121.TimeLength * arg1_5
						end
					end, {arg1.videoRef});
					timePosition = any_useState_result1_upvr_4;
					timeLength = any_useState_result1_upvr_9;
				})
				-- KONSTANTWARNING: GOTO [416] #285
			end
		end
	end
	module_3.ProgressBarContainer = nil
	-- KONSTANTERROR: [0] 1. Error Block 95 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [419] 287. Error Block 90 start (CF ANALYSIS FAILED)
	var142 = arg1.isOverlayDisabled
	if not var142 then
		var142 = React_upvr
		var142 = View_upvr
		local tbl_12 = {
			backgroundStyle = {
				Color3 = Color3.fromRGB(0, 0, 0);
				Transparency = 0.4;
			};
			stateLayer = {
				affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
			};
			tag = "size-full-full";
			ZIndex = 2;
		}
	else
		-- KONSTANTERROR: [461] 316. Error Block 48 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [461] 316. Error Block 48 end (CF ANALYSIS FAILED)
	end
	module_3.ShadowBlock = nil
	if true then
		var142 = React_upvr
		var142 = Image_upvr
		local tbl_9 = {
			Image = arg1.thumbnailImage;
		}
		local var150 = 1
		tbl_9.Size = UDim2.fromScale(var150, 1)
		tbl_9.ZIndex = 2
		if arg1.cornerRadius then
			var150 = React_upvr.createElement
			var150 = var150("UICorner", {
				CornerRadius = UDim.new(0, arg1.cornerRadius);
			})
		else
			var150 = nil
		end
		;({}).UICorner = var150
	else
	end
	module_3.ThumbnailImage = nil
	do
		return React_upvr.createElement(View_upvr, {
			tag = "shrink size-full";
			onActivated = React_upvr.useCallback(function() -- Line 101
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_2 (readonly)
					[2]: any_useState_result1_upvr_3 (readonly)
				]]
				any_useState_result2_upvr_2(not any_useState_result1_upvr_3)
			end, {any_useState_result1_upvr_3});
			stateLayer = {
				affordance = StateLayerAffordance_upvr.None;
			};
			ZIndex = arg1.ZIndex;
		}, module_3)
	end
	-- KONSTANTERROR: [419] 287. Error Block 90 end (CF ANALYSIS FAILED)
end