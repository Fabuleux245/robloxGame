-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:58
-- Luau version 6, Types version 3
-- Time taken: 0.010400 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TryOnButton")
local getSelectionImageObjectRounded_upvr = require(Parent.getSelectionImageObjectRounded)
local TryOn_upvr = require(script.Parent.Common.ControllerShortcutKeycodes).TryOn
function any_extend_result1.init(arg1) -- Line 25
	--[[ Upvalues[3]:
		[1]: getSelectionImageObjectRounded_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: TryOn_upvr (readonly)
	]]
	arg1.selectedImage = getSelectionImageObjectRounded_upvr()
	ContextActionService_upvr:BindCoreAction("TryOnGamepadShortcut", function(arg1_2, arg2, arg3) -- Line 28
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.End then
			arg1:activateButton()
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end, false, TryOn_upvr)
end
function any_extend_result1.activateButton(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if not arg1.props.showTryOn then
	else
		local assetInfo_3 = arg1.props.assetInfo
		local var15 = assetInfo_3
		if var15 then
			var15 = arg1.props.localPlayerModel
			if var15 then
				var15 = false
				if Constants_upvr.LayeredAssetTypes[assetInfo_3.assetTypeId] ~= nil then
					if arg1.props.localPlayerModel.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
						var15 = false
					else
						var15 = true
					end
				end
			end
		end
		if not var15 then
			if arg1.props.tryingOnInfo.tryingOn then
				arg1.props.takeOffItem()
				return
			end
			arg1.props.tryOnItem(true, assetInfo_3.assetId, assetInfo_3.assetTypeId, arg1.props.partOfBundleAndOffsale, arg1.props.bundleId)
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("TryOnGamepadShortcut")
end
local FFlagEnableFavoriteButtonForUgc_upvr = require(Parent.Flags.FFlagEnableFavoriteButtonForUgc)
local Colors_upvr = require(Parent.Colors)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 68
	--[[ Upvalues[6]:
		[1]: FFlagEnableFavoriteButtonForUgc_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Colors_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: AppFonts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
	local assetInfo_6 = arg1.props.assetInfo
	local var46
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var46 = assetInfo_6.creatorId
		return var46
	end
	if not assetInfo_6 or not INLINED_3() then
		var46 = 0
	end
	if FFlagEnableFavoriteButtonForUgc_upvr then
	elseif var46 == '1' then
	else
	end
	local var47
	if arg1.props.tryingOnInfo.tryingOn then
		var47 = "InGame.InspectMenu.Action.TakeOff"
	else
		var47 = "InGame.InspectMenu.Action.TryOn"
	end
	if assetInfo_6 then
		if arg1.props.localPlayerModel then
			if Constants_upvr.LayeredAssetTypes[assetInfo_6.assetTypeId] ~= nil then
				if arg1.props.localPlayerModel.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
					local _ = false
					-- KONSTANTWARNING: Skipped task `defvar` above
				else
				end
			end
		end
	end
	local module = {
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 1;
		Size = UDim2.new(0.5, -5, 0, 44);
		Visible = arg1.props.showTryOn;
		LayoutOrder = 2;
		Image = "rbxasset://textures/ui/InspectMenu/Button_outline.png";
	}
	if true then
		-- KONSTANTWARNING: GOTO [107] #75
	end
	-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [106] 74. Error Block 45 start (CF ANALYSIS FAILED)
	module.ImageTransparency = 0
	module.ScaleType = Enum.ScaleType.Slice
	module.SliceCenter = Rect.new(5, 5, 120, 20)
	local module_3 = {
		SelectionGainedImage = Roact_upvr.createElement("ImageLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			Visible = false;
			Image = "rbxasset://textures/ui/InspectMenu/Button_white.png";
			ImageColor3 = Colors_upvr.Pumice;
		});
	}
	local tbl_2 = {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		Text = RobloxTranslator_upvr:FormatByKeyForLocale(var47, arg1.props.locale);
		Font = AppFonts_upvr.default:getDefault();
		TextSize = 16;
		TextColor3 = Colors_upvr.White;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if true then
	else
	end
	tbl_2.TextTransparency = 0
	tbl_2.SelectionImageObject = arg1.selectedImage
	tbl_2.ZIndex = 2
	tbl_2[Roact_upvr.Event.SelectionGained] = function(arg1_7) -- Line 120
		--[[ Upvalues[1]:
			[1]: Colors_upvr (copied, readonly)
		]]
		arg1_7.Parent.SelectionGainedImage.Visible = true
		arg1_7.TextColor3 = Colors_upvr.Carbon
	end
	tbl_2[Roact_upvr.Event.SelectionLost] = function(arg1_8) -- Line 124
		--[[ Upvalues[1]:
			[1]: Colors_upvr (copied, readonly)
		]]
		arg1_8.Parent.SelectionGainedImage.Visible = false
		arg1_8.TextColor3 = Colors_upvr.White
	end
	tbl_2[Roact_upvr.Ref] = arg1.props.tryOnButtonRef
	tbl_2[Roact_upvr.Event.Activated] = function() -- Line 129
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:activateButton()
	end
	module_3.TryOnTextKey = Roact_upvr.createElement("TextButton", tbl_2)
	do
		return Roact_upvr.createElement("ImageLabel", module, module_3)
	end
	-- KONSTANTERROR: [106] 74. Error Block 45 end (CF ANALYSIS FAILED)
end
local TryOnItem_upvr = require(Parent.Thunks.TryOnItem)
local SetTryingOnInfo_upvr = require(Parent.Actions.SetTryingOnInfo)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 136
	return {
		locale = arg1.locale;
		view = arg1.view;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		bundleInfo = arg1.bundles;
		tryingOnInfo = arg1.tryingOnInfo;
	}
end, function(arg1) -- Line 146
	--[[ Upvalues[2]:
		[1]: TryOnItem_upvr (readonly)
		[2]: SetTryingOnInfo_upvr (readonly)
	]]
	return {
		tryOnItem = function(arg1_9, arg2, arg3, arg4, arg5) -- Line 148, Named "tryOnItem"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: TryOnItem_upvr (copied, readonly)
			]]
			arg1(TryOnItem_upvr(arg1_9, arg2, arg3, arg4, arg5))
		end;
		takeOffItem = function() -- Line 151, Named "takeOffItem"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetTryingOnInfo_upvr (copied, readonly)
			]]
			arg1(SetTryingOnInfo_upvr(false, nil, nil))
		end;
	}
end)(any_extend_result1)