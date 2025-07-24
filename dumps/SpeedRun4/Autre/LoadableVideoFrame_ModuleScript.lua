-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:55
-- Luau version 6, Types version 3
-- Time taken: 0.010697 seconds

local Parent = script:FindFirstAncestor("VideoUtils").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryAutoAdvance
local FFlagLuaAppEdpMediaGalleryFullScreen_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpMediaGalleryFullScreen
local ArgCheck_upvr = require(Parent.ArgCheck)
local FFlagLuaAppUnifiedVideoPlayerMuteButton_upvr = require(Parent.SharedFlags).FFlagLuaAppUnifiedVideoPlayerMuteButton
local LoadableImage_upvr = require(Parent.UIBlox).App.Loading.LoadableImage
local Skeleton_upvr = Foundation.Skeleton
local Radius_upvr = Foundation.Enums.Radius
local function LoadableVideoFrame(arg1, arg2) -- Line 33
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr (readonly)
		[3]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
		[5]: FFlagLuaAppUnifiedVideoPlayerMuteButton_upvr (readonly)
		[6]: LoadableImage_upvr (readonly)
		[7]: Skeleton_upvr (readonly)
		[8]: Radius_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local var13_upvr
	if FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr or FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
		var13_upvr = nil
	else
		var13_upvr = React_upvr.useRef(nil)
	end
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	if arg1.shouldStartPlayback and any_useRef_result1_upvr.current == nil then
		any_useRef_result1_upvr.current = tick()
	elseif not arg1.shouldStartPlayback then
		any_useRef_result1_upvr.current = nil
	end
	local var15 = false
	if arg1.thumbnail ~= nil then
		if arg1.thumbnail == "" then
			var15 = false
		else
			var15 = true
		end
	end
	local var16
	local tbl_3 = {}
	if FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr or FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
	else
	end
	tbl_3[1] = arg1.onVideoLoaded
	tbl_3[2] = var13_upvr
	tbl_3[3] = any_useRef_result1_upvr
	if FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr then
		local function _() -- Line 88
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onVideoEnded then
				arg1.onVideoEnded()
			end
		end
		local _ = {arg1.onVideoEnded}
	else
	end
	local module = {}
	if arg1.shouldStartPlayback then
		local tbl_4 = {}
		var16 = UDim2.fromScale(1, 1)
		tbl_4.Size = var16
		var16 = arg1.video
		tbl_4.Video = var16
		var16 = true
		tbl_4.Playing = var16
		var16 = arg1.looped
		tbl_4.Looped = var16
		if FFlagLuaAppUnifiedVideoPlayerMuteButton_upvr then
			if arg1.muted then
				var16 = 0
			else
				var16 = nil
			end
		else
			var16 = 0
		end
		tbl_4.Volume = var16
		tbl_4.BackgroundTransparency = 1
		tbl_4.BorderSizePixel = 0
		tbl_4.ZIndex = 1
		if FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr or FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
		else
		end
		tbl_4.ref = var13_upvr
		tbl_4[React_upvr.Event.Loaded] = React_upvr.useCallback(function() -- Line 51
			--[[ Upvalues[8]:
				[1]: FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr (copied, readonly)
				[2]: FFlagLuaAppEdpMediaGalleryFullScreen_upvr (copied, readonly)
				[3]: arg2 (readonly)
				[4]: var13_upvr (readonly)
				[5]: ArgCheck_upvr (copied, readonly)
				[6]: any_useRef_result1_upvr (readonly)
				[7]: arg1 (readonly)
				[8]: any_useState_result2_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
			local var22
			local var23
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var23 = FFlagLuaAppEdpMediaGalleryFullScreen_upvr
				return var23
			end
			if var23 or INLINED() then
				var23 = typeof(arg2)
				if var23 == "table" then
					var23 = arg2
					var22 = var23.current
				else
					var23 = warn
					var23(`unsupported ref type: {typeof(arg2)}`)
				end
			else
				var23 = var13_upvr
				var22 = var23.current
			end
			-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [57] 44. Error Block 35 start (CF ANALYSIS FAILED)
			if any_useRef_result1_upvr.current <= var23 then
			else
				-- KONSTANTERROR: [67] 51. Error Block 19 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [67] 51. Error Block 19 end (CF ANALYSIS FAILED)
			end
			if arg1.onVideoLoaded then
				arg1.onVideoLoaded(var22.TimeLength, -1)
			end
			any_useState_result2_upvr(true)
			-- KONSTANTERROR: [57] 44. Error Block 35 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [82] 63. Error Block 24 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [82] 63. Error Block 24 end (CF ANALYSIS FAILED)
		end, tbl_3)
		tbl_4[React_upvr.Event.DidLoop] = React_upvr.useCallback(function() -- Line 95
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.onVideoLooped then
				arg1.onVideoLooped()
			end
		end, {arg1.onVideoLooped})
		if FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr then
			-- KONSTANTWARNING: GOTO [207] #154
		end
		tbl_4[React_upvr.Event.Ended] = nil
		if arg1.cornerRadius then
			local tbl_5 = {
				CornerRadius = UDim.new(0, arg1.cornerRadius);
			}
		else
		end
		;({}).Corner = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
	end
	module.VideoFrame = nil
	local var33
	if not arg1.shouldStartPlayback or not any_useState_result1 or var15 then
		local tbl = {
			BackgroundTransparency = 1;
			Image = arg1.thumbnail;
		}
		if arg1.ScaleType == Enum.ScaleType.Tile then
			var33 = arg1.cornerRadius
		else
			var33 = 0
		end
		tbl.Size = UDim2.new(1, 0, 1, var33)
		tbl.cornerRadius = UDim.new(0, arg1.cornerRadius)
		tbl.showFailedStateWhenLoadingFailed = true
		tbl.useShimmerAnimationWhileLoading = true
		tbl.ZIndex = 2
		tbl.ScaleType = arg1.ScaleType
		if arg1.ScaleType == Enum.ScaleType.Tile and arg1.cornerRadius then
			var33 = -arg1.cornerRadius
		else
		end
		tbl.TileSize = nil
	else
	end
	module.VideoThumbnail = nil
	local var35
	if arg1.shouldStartPlayback and not any_useState_result1 then
		var35 = React_upvr.createElement
		local tbl_2 = {
			Size = UDim2.fromScale(1, 1);
		}
		if arg1.cornerRadius then
		else
		end
		tbl_2.radius = nil
		tbl_2.ZIndex = 3
		var35 = var35(Skeleton_upvr, tbl_2)
	else
		var35 = nil
	end
	module.Skeleton = var35
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ClipsDescendants = true;
	}, module)
end
if FFlagLuaAppEdpMediaGalleryAutoAdvance_upvr or FFlagLuaAppEdpMediaGalleryFullScreen_upvr then
	return React_upvr.forwardRef(LoadableVideoFrame)
end
return LoadableVideoFrame