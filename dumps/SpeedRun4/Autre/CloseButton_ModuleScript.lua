-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:47
-- Luau version 6, Types version 3
-- Time taken: 0.001872 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("CloseButton")
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local Theme_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Settings.Theme)
local GuiService_upvr = game:GetService("GuiService")
local function render(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InspectAndBuyContext_upvr (readonly)
		[3]: Theme_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	local module = {}
	local view_upvr = arg1.props.view
	local viewingDetails_upvr = arg1.props.detailsInformation.viewingDetails
	local closeDetails_upvr = arg1.props.closeDetails
	local setTryingOnInfo_upvr = arg1.props.setTryingOnInfo
	function module.render(arg1_2) -- Line 26
		--[[ Upvalues[7]:
			[1]: view_upvr (readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: viewingDetails_upvr (readonly)
			[5]: closeDetails_upvr (readonly)
			[6]: setTryingOnInfo_upvr (readonly)
			[7]: GuiService_upvr (copied, readonly)
		]]
		local var13 = arg1_2[view_upvr]
		local udim2 = UDim2.new(0, 0, 0, 0)
		local var15 = 26
		if Theme_upvr.UseInspectAndBuyPanel() then
			var15 = 18
			udim2 = UDim2.new(0, var13.BorderPaddingSize, 0, 0)
		end
		local module_2 = {
			Size = UDim2.new(0, var15, 0, var15);
			Position = var13.CloseButtonPosition + udim2;
			BackgroundTransparency = 1;
		}
		local var17 = false
		module_2.Selectable = var17
		if viewingDetails_upvr then
			var17 = "rbxasset://textures/ui/InspectMenu/caret_tail_left.png"
		else
			var17 = "rbxasset://textures/ui/InspectMenu/x.png"
		end
		module_2.Image = var17
		module_2.ZIndex = 2
		module_2[Roact_upvr.Event.Activated] = function() -- Line 42
			--[[ Upvalues[4]:
				[1]: viewingDetails_upvr (copied, readonly)
				[2]: closeDetails_upvr (copied, readonly)
				[3]: setTryingOnInfo_upvr (copied, readonly)
				[4]: GuiService_upvr (copied, readonly)
			]]
			if viewingDetails_upvr then
				closeDetails_upvr()
				setTryingOnInfo_upvr(false, nil)
			else
				GuiService_upvr:CloseInspectMenu()
			end
		end
		return Roact_upvr.createElement("ImageButton", module_2)
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module)
end
any_extend_result1.render = render
local SetDetailsInformation_upvr = require(Parent.Actions.SetDetailsInformation)
local SetTryingOnInfo_upvr = require(Parent.Actions.SetTryingOnInfo)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 55
	return {
		view = arg1.view;
		detailsInformation = arg1.detailsInformation;
	}
end, function(arg1) -- Line 60
	--[[ Upvalues[2]:
		[1]: SetDetailsInformation_upvr (readonly)
		[2]: SetTryingOnInfo_upvr (readonly)
	]]
	return {
		closeDetails = function() -- Line 62, Named "closeDetails"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDetailsInformation_upvr (copied, readonly)
			]]
			arg1(SetDetailsInformation_upvr(false, nil))
		end;
		setTryingOnInfo = function(arg1_3, arg2) -- Line 65, Named "setTryingOnInfo"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetTryingOnInfo_upvr (copied, readonly)
			]]
			arg1(SetTryingOnInfo_upvr(arg1_3, arg2))
		end;
	}
end)(any_extend_result1)