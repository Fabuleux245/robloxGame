-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:46
-- Luau version 6, Types version 3
-- Time taken: 0.007186 seconds

local CorePackages = game:GetService("CorePackages")
local GuiService_upvr = game:GetService("GuiService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("BuyButton")
local getSelectionImageObjectRounded_upvr = require(Parent.getSelectionImageObjectRounded)
function any_extend_result1.init(arg1) -- Line 24
	--[[ Upvalues[2]:
		[1]: getSelectionImageObjectRounded_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	arg1.selectedImage = getSelectionImageObjectRounded_upvr()
	arg1.connections = {}
	arg1.lastGamepadFocus = nil
	function arg1.onPromptPurchaseFinished() -- Line 29
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if arg1.props.gamepadEnabled and arg1.props.visible then
			GuiService_upvr.SelectedCoreObject = arg1.lastGamepadFocus
		end
	end
end
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local FFlagEnableFavoriteButtonForUgc_upvr = require(Parent.Flags.FFlagEnableFavoriteButtonForUgc)
local Colors_upvr = require(Parent.Colors)
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[6]:
		[1]: UtilityFunctions_upvr (readonly)
		[2]: FFlagEnableFavoriteButtonForUgc_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Colors_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: AppFonts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local forSale_upvr = arg1.props.forSale
	local buyText = arg1.props.buyText
	local var14 = 1
	local assetInfo = arg1.props.assetInfo
	local var16
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var16 = assetInfo.creatorId
		return var16
	end
	if not assetInfo or not INLINED() then
		var16 = 0
	end
	if FFlagEnableFavoriteButtonForUgc_upvr then
		var14 = -32
	elseif var16 == '1' then
		var14 = -32
	else
		var14 = -5
	end
	if not forSale_upvr then
		local var17 = 0.5
	end
	local module = {
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 1;
		Size = UDim2.new(0.5, var14, 0, 44);
		Image = "rbxasset://textures/ui/InspectMenu/Button_white.png";
		ImageColor3 = Colors_upvr.Green;
		SelectionImageObject = arg1.selectedImage;
		LayoutOrder = 3;
		ImageTransparency = var17;
		[Roact_upvr.Ref] = arg1.props.buyButtonRef;
	}
	local promptPurchase_upvr = arg1.props.promptPurchase
	local itemId_upvr = arg1.props.itemId
	local itemType_upvr = arg1.props.itemType
	local collectibleItemId_upvr = arg1.props.collectibleItemId
	local collectibleLowestAvailableResaleProductId_upvr = arg1.props.collectibleLowestAvailableResaleProductId
	local collectibleLowestAvailableResaleItemInstanceId_upvr = arg1.props.collectibleLowestAvailableResaleItemInstanceId
	local collectibleLowestResalePrice_upvr = arg1.props.collectibleLowestResalePrice
	local any_isLimited2Point0_Or_LimitedCollectible_result1_upvr = UtilityFunctions_upvr.isLimited2Point0_Or_LimitedCollectible(arg1.props.assetInfo)
	module[Roact_upvr.Event.Activated] = function() -- Line 73
		--[[ Upvalues[11]:
			[1]: forSale_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: promptPurchase_upvr (readonly)
			[5]: itemId_upvr (readonly)
			[6]: itemType_upvr (readonly)
			[7]: collectibleItemId_upvr (readonly)
			[8]: collectibleLowestAvailableResaleProductId_upvr (readonly)
			[9]: collectibleLowestAvailableResaleItemInstanceId_upvr (readonly)
			[10]: collectibleLowestResalePrice_upvr (readonly)
			[11]: any_isLimited2Point0_Or_LimitedCollectible_result1_upvr (readonly)
		]]
		if forSale_upvr then
			if arg1.props.gamepadEnabled and arg1.props.visible then
				arg1.lastGamepadFocus = GuiService_upvr.SelectedCoreObject
				GuiService_upvr.SelectedCoreObject = nil
			end
			promptPurchase_upvr(itemId_upvr, itemType_upvr, collectibleItemId_upvr, collectibleLowestAvailableResaleProductId_upvr, collectibleLowestAvailableResaleItemInstanceId_upvr, collectibleLowestResalePrice_upvr, any_isLimited2Point0_Or_LimitedCollectible_result1_upvr)
		end
	end
	return Roact_upvr.createElement("ImageButton", module, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		});
		RobuxIcon = Roact_upvr.createElement("ImageLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 16, 0, 16);
			Image = "rbxasset://textures/ui/common/robux_small.png";
			ImageTransparency = var17;
			ImageColor3 = Colors_upvr.White;
			LayoutOrder = 1;
			Visible = arg1.props.showRobuxIcon;
		});
		BuyText = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Size = UDim2.new(0, arg1:getBuyButtonTextSize(buyText), var14, 0);
			Text = tostring(buyText);
			Font = AppFonts_upvr.default:getDefault();
			TextSize = 16;
			TextColor3 = Colors_upvr.White;
			TextTransparency = var17;
			LayoutOrder = 2;
			TextXAlignment = Enum.TextXAlignment.Center;
		});
	})
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
function any_extend_result1.didMount(arg1) -- Line 121
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	table.insert(arg1.connections, MarketplaceService_upvr.PromptPurchaseFinished:Connect(arg1.onPromptPurchaseFinished))
	table.insert(arg1.connections, MarketplaceService_upvr.PromptBundlePurchaseFinished:Connect(arg1.onPromptPurchaseFinished))
end
function any_extend_result1.willUnmount(arg1) -- Line 129
	for _, v in pairs(arg1.connections) do
		v:Disconnect()
	end
end
local TextService_upvr = game:GetService("TextService")
function any_extend_result1.getBuyButtonTextSize(arg1, arg2) -- Line 135
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: AppFonts_upvr (readonly)
	]]
	local var39
	if arg1.props.buyButtonRef.current then
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(tostring(arg2), 16, AppFonts_upvr.default:getDefault(), Vector2.new(arg1.props.buyButtonRef.current.AbsoluteSize.X, 5000))
		var39 = arg1.props.buyButtonRef
		var39.Size = UDim2.new(0, 1, 0, any_GetTextSize_result1.Y)
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var39 = any_GetTextSize_result1.X
			return var39
		end
		if 32 >= any_GetTextSize_result1.X or not INLINED_2() then
			var39 = 32
		end
		return var39
	end
	return 0
end
local PromptPurchase_upvr = require(Parent.Thunks.PromptPurchase)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 150
	return {
		locale = arg1.locale;
		view = arg1.view;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		gamepadEnabled = arg1.gamepadEnabled;
		visible = arg1.visible;
	}
end, function(arg1) -- Line 160
	--[[ Upvalues[1]:
		[1]: PromptPurchase_upvr (readonly)
	]]
	return {
		promptPurchase = function(arg1_2, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 162, Named "promptPurchase"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: PromptPurchase_upvr (copied, readonly)
			]]
			arg1(PromptPurchase_upvr(arg1_2, arg2, arg3, arg4, arg5, arg6, arg7))
		end;
	}
end)(any_extend_result1)