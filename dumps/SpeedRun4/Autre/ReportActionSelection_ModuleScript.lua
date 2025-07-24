-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:25
-- Luau version 6, Types version 3
-- Time taken: 0.007104 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportActionSelection")
local function var6() -- Line 25
end
any_extend_result1.defaultProps = {
	titleText = "Thanks for your report!";
	subtitleText = "We've received your report and will take action soon if needed. Your feedback helps keep our community safe.";
	instructionText = "Other steps you can take:";
	muteText = "Mute {DISPLAYNAME}(@username)";
	blockText = "Block {DISPLAYNAME}(@username)";
	doneText = "Done";
	showVoiceMuting = true;
	isVoiceMuted = false;
	isBlocked = false;
	onMuteCheckboxActivated = var6;
	onBlockCheckboxActivated = var6;
	onDoneActivated = var6;
	ZIndex = 1;
	uiScale = 1.3;
}
any_extend_result1.validateProps = t.interface({
	titleText = t.string;
	subtitleText = t.string;
	instructionText = t.string;
	muteText = t.string;
	blockText = t.string;
	doneText = t.string;
	showVoiceMuting = t.boolean;
	isVoiceMuted = t.optional(t.boolean);
	isBlocked = t.optional(t.boolean);
	onMuteCheckboxActivated = t.optional(t.callback);
	onBlockCheckboxActivated = t.optional(t.callback);
	onDoneActivated = t.callback;
	ZIndex = t.number;
})
function any_extend_result1.init(arg1) -- Line 60
	function arg1.onMuteCheckboxActivated(arg1_2) -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.isVoiceMuted = arg1_2
		arg1:setState(tbl)
		arg1.props.onMuteCheckboxActivated(arg1_2)
	end
	function arg1.onBlockCheckboxActivated(arg1_3) -- Line 69
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.isBlocked = arg1_3
		arg1:setState(tbl_3)
		arg1.props.onBlockCheckboxActivated(arg1_3)
	end
	function arg1.onDoneActivated() -- Line 77
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onDoneActivated(arg1.state.isBlocked, arg1.state.isVoiceMuted)
	end
	arg1:setState({
		isVoiceMuted = arg1.props.isVoiceMuted;
		isBlocked = arg1.props.isBlocked;
	})
end
local withStyle_upvr = UIBlox.Style.withStyle
local CheckboxRow_upvr = require(script.Parent.CheckboxRow)
local TextButton_upvr = UIBlox.App.Button.TextButton
function any_extend_result1.render(arg1) -- Line 87
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CheckboxRow_upvr (readonly)
		[4]: TextButton_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 88
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CheckboxRow_upvr (copied, readonly)
			[4]: TextButton_upvr (copied, readonly)
		]]
		local BaseSize = arg1_4.Font.BaseSize
		local module = {
			uiScale = Roact_upvr.createElement("UIScale", {
				Scale = arg1.props.uiScale;
			});
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, 22);
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			title = Roact_upvr.createElement("TextLabel", {
				Text = arg1.props.titleText;
				TextColor3 = arg1_4.Theme.TextEmphasis.Color;
				TextTransparency = arg1_4.Theme.TextEmphasis.Transparency;
				TextSize = arg1_4.Font.Header1.RelativeSize * BaseSize;
				Font = arg1_4.Font.Header1.Font;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = 1;
			});
			subtitle = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.fromOffset(612, 0);
				Text = arg1.props.subtitleText;
				TextColor3 = arg1_4.Theme.TextEmphasis.Color;
				TextTransparency = arg1_4.Theme.TextEmphasis.Transparency;
				TextSize = arg1_4.Font.CaptionHeader.RelativeSize * BaseSize;
				Font = arg1_4.Font.CaptionHeader.Font;
				TextWrapped = true;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				LayoutOrder = 2;
			});
		}
		local tbl_2 = {
			layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, 18);
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			instruction = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 0);
				Text = arg1.props.instructionText;
				TextColor3 = arg1_4.Theme.TextDefault.Color;
				TextTransparency = arg1_4.Theme.TextDefault.Transparency;
				TextSize = arg1_4.Font.CaptionHeader.RelativeSize * BaseSize;
				Font = arg1_4.Font.CaptionHeader.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				LayoutOrder = 1;
			});
		}
		local showVoiceMuting = arg1.props.showVoiceMuting
		if showVoiceMuting then
			showVoiceMuting = Roact_upvr.createElement
			local tbl_4 = {
				height = 28;
				image = "icons/controls/microphone";
				descriptionText = arg1.props.muteText;
				actionDisabled = arg1.state.isBlocked;
			}
			local isBlocked = arg1.state.isBlocked
			if not isBlocked then
				isBlocked = arg1.state.isVoiceMuted
			end
			tbl_4.checkboxSelected = isBlocked
			tbl_4.onCheckboxActivated = arg1.onMuteCheckboxActivated
			tbl_4.LayoutOrder = 2
			showVoiceMuting = showVoiceMuting(CheckboxRow_upvr, tbl_4)
		end
		tbl_2.muteCheckbox = showVoiceMuting
		showVoiceMuting = arg1.props.showVoiceMuting
		local var33 = showVoiceMuting
		if var33 then
			var33 = Roact_upvr.createElement
			var33 = var33("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				BackgroundColor3 = arg1_4.Theme.Divider.Color;
				BackgroundTransparency = arg1_4.Theme.Divider.Transparency;
				BorderSizePixel = 0;
				LayoutOrder = 3;
			})
		end
		tbl_2.div = var33
		tbl_2.blockCheckbox = Roact_upvr.createElement(CheckboxRow_upvr, {
			height = 28;
			image = "icons/actions/block";
			descriptionText = arg1.props.blockText;
			checkboxSelected = arg1.state.isBlocked;
			onCheckboxActivated = arg1.onBlockCheckboxActivated;
			LayoutOrder = 4;
		})
		tbl_2.doneContainer = Roact_upvr.createElement("Frame", {
			BackgroundColor3 = arg1_4.Theme.SystemPrimaryContent.Color;
			BackgroundTransparency = arg1_4.Theme.SystemPrimaryContent.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 0, 44);
			LayoutOrder = 5;
		}, {
			uiCorner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 4);
			});
			doneButton = Roact_upvr.createElement(TextButton_upvr, {
				size = UDim2.fromScale(1, 1);
				text = arg1.props.doneText;
				onActivated = arg1.onDoneActivated;
			});
		})
		module.actions = Roact_upvr.createElement("Frame", {
			Size = UDim2.fromOffset(584, 0);
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 3;
		}, tbl_2)
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			BackgroundTransparency = 1;
			ZIndex = arg1.props.ZIndex;
		}, module)
	end)
end
return any_extend_result1