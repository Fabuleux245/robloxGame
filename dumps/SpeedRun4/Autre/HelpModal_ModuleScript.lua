-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:35
-- Luau version 6, Types version 3
-- Time taken: 0.001897 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("HelpModal")
function any_extend_result1.init(arg1) -- Line 27
	function arg1.onDismiss() -- Line 28
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.showHelpModal(false)
	end
end
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local ModalDialog_upvr = require(Parent.Components.ModalDialog)
local ThemedTextLabel_upvr = require(Parent.Components.PortedComponents.ThemedTextLabel)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[4]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ModalDialog_upvr (readonly)
		[4]: ThemedTextLabel_upvr (readonly)
	]]
	return withLocalization_upvr({
		mainHeader = "CoreScripts.Feedback.Help.MainHeader";
		instructionLabel = "CoreScripts.Feedback.Help.Instructions";
	})(function(arg1_2) -- Line 37
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ModalDialog_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ModalDialog_upvr, {
			visible = arg1.props.visible;
			screenSize = arg1.props.screenSize;
			titleText = arg1_2.mainHeader;
			maxHeight = 130;
			maxWidth = 540;
			showCloseButton = true;
			contents = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24);
					PaddingRight = UDim.new(0, 24);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Top;
				});
				InstructionLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					LayoutOrder = 1;
					fontKey = "Body";
					themeKey = "TextDefault";
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.new(0, 76, 0.5, 0);
					Size = UDim2.new(1, 0, 0.4, 36);
					Text = arg1_2.instructionLabel;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
			});
			onDismiss = arg1.onDismiss;
		})
	end)
end
local ShowHelpModalThunk_upvr = require(Parent.Thunks.ShowHelpModalThunk)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 75
	return {
		screenSize = arg1.displayOptions.screenSize;
		visible = arg1.common.showHelpModal;
	}
end, function(arg1) -- Line 80
	--[[ Upvalues[1]:
		[1]: ShowHelpModalThunk_upvr (readonly)
	]]
	return {
		showHelpModal = function(arg1_3) -- Line 82, Named "showHelpModal"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ShowHelpModalThunk_upvr (copied, readonly)
			]]
			arg1(ShowHelpModalThunk_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)