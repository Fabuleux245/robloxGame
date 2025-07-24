-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:21
-- Luau version 6, Types version 3
-- Time taken: 0.010331 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local Colors = require(Parent.Style).Colors
local Otter_upvr = require(Parent.Otter)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ListSearchWidget")
local Flint_upvr = Colors.Flint
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
function any_extend_result1.init(arg1) -- Line 40
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: GetImageData_upvr (readonly)
		[4]: Flint_upvr (readonly)
		[5]: ImageSetButton_upvr (readonly)
	]]
	arg1.state = {
		fullLoad = false;
		visible = false;
		filteredList = arg1.props.List;
	}
	arg1.visibility = 0
	arg1.visibilityTarget = 0
	arg1.baseFrameRef = Roact_upvr.createRef()
	function arg1.getWidgetPosition() -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return UDim2.new(0.5, 0, 2 - arg1.visibility, 10)
	end
	function arg1.searchTextChanged(arg1_2) -- Line 55
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local string_lower_result1 = string.lower(arg1_2.Text)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 12. Error Block 3 start (CF ANALYSIS FAILED)
		arg1:setState({
			filteredList = arg1.props.List;
		})
		do
			return
		end
		-- KONSTANTERROR: [19] 12. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 21. Error Block 14 start (CF ANALYSIS FAILED)
		for _, v in ipairs(arg1.props.List) do
			if string.find(string.lower(v.localizedName), string_lower_result1, 1, true) then
				table.insert({}, v)
			end
		end
		local tbl = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.filteredList = {}
		arg1:setState(tbl)
		-- KONSTANTERROR: [32] 21. Error Block 14 end (CF ANALYSIS FAILED)
	end
	function arg1.renderWidgetBackground(arg1_3) -- Line 76
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetLabel_upvr (copied, readonly)
			[3]: GetImageData_upvr (copied, readonly)
			[4]: Flint_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: ImageSetButton_upvr (copied, readonly)
		]]
		if arg1_3.isWideScreen then
			return Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.new(1, 0, 1, -(1.4 * arg1_3.closeButtonSize) + 10);
				Position = arg1_3.Position;
				AnchorPoint = Vector2.new(0.5, 1);
				BackgroundTransparency = 1;
				Image = GetImageData_upvr("LuaApp/buttons/buttonFill") or "LuaApp/buttons/buttonFill";
				ImageColor3 = Flint_upvr;
				BorderSizePixel = 0;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(8, 8, 9, 9);
				Visible = arg1_3.Visible;
				[Roact_upvr.Ref] = arg1.baseFrameRef;
			}, {
				CloseButton = Roact_upvr.createElement(ImageSetButton_upvr, {
					Size = UDim2.new(0, arg1_3.closeButtonSize, 0, arg1_3.closeButtonSize);
					AnchorPoint = Vector2.new(0, 1);
					Image = GetImageData_upvr("LuaApp/icons/GameDetails/navigation/close") or "LuaApp/icons/GameDetails/navigation/close";
					BackgroundTransparency = 1;
					[Roact_upvr.Event.Activated] = arg1_3.CloseCallback;
				});
				UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(600, math.huge);
				});
				ContentWrapper = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, -80, 1, -50);
					Position = UDim2.new(0, 40, 0, 40);
				}, arg1_3.contents);
			})
		end
		local var29 = arg1_3.closeButtonSize + 20
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 10);
			Position = arg1_3.Position;
			AnchorPoint = Vector2.new(0.5, 1);
			BackgroundColor3 = Flint_upvr;
			Visible = arg1_3.Visible;
			[Roact_upvr.Ref] = arg1.baseFrameRef;
		}, {
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 40);
				PaddingLeft = UDim.new(0, 20);
				PaddingRight = UDim.new(0, 20);
				PaddingBottom = UDim.new(0, 10);
			});
			CloseButton = Roact_upvr.createElement(ImageSetButton_upvr, {
				Size = UDim2.new(0, arg1_3.closeButtonSize, 0, arg1_3.closeButtonSize);
				Image = GetImageData_upvr("LuaApp/icons/GameDetails/navigation/close") or "LuaApp/icons/GameDetails/navigation/close";
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(0.21, 0);
				[Roact_upvr.Event.Activated] = arg1_3.CloseCallback;
			});
			ContentWrapper = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, -var29);
				Position = UDim2.new(0, 0, 0, var29);
			}, arg1_3.contents);
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1.motor = Otter_upvr.createSingleMotor(arg1.visibility)
	arg1.motor:onStep(function(arg1_4) -- Line 143
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.visibility = arg1_4
		if arg1.baseFrameRef.current then
			arg1.baseFrameRef.current.Position = arg1.getWidgetPosition()
			arg1.baseFrameRef.current.Parent.BackgroundTransparency = 1 - 0.5 * arg1.visibility
		end
		if arg1_4 == 0 and arg1.state.visible then
			arg1:setState({
				visible = false;
			})
		elseif arg1_4 == 1 and not arg1.state.fullLoad then
			arg1:setState({
				fullLoad = true;
			})
		end
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 162
	if arg1.motor then
		arg1.motor:destroy()
	end
end
any_extend_result1.defaultProps = {
	SearchPlaceholder = "Feature.Chat.Label.SearchWord";
}
local FormFactor_upvr = require(Parent.FormFactor).Enums.FormFactor
local withLocalization_upvr = require(Parent.Localization).withLocalization
local AppFonts_upvr = require(Parent.Style).AppFonts
local White_upvr = Colors.White
local SearchBar_upvr = require(AuthCommon.Components.SearchBar)
local Obsidian_upvr = Colors.Obsidian
local WindowedListFrame_upvr = require(AuthCommon.Components.WindowedListFrame)
function any_extend_result1.render(arg1) -- Line 172
	--[[ Upvalues[9]:
		[1]: FormFactor_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: AppFonts_upvr (readonly)
		[5]: White_upvr (readonly)
		[6]: SearchBar_upvr (readonly)
		[7]: Obsidian_upvr (readonly)
		[8]: Flint_upvr (readonly)
		[9]: WindowedListFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var46_upvr
	if arg1.props.formFactor ~= FormFactor_upvr.WIDE then
		var46_upvr = false
	else
		var46_upvr = true
	end
	if var46_upvr then
		local var47_upvw = 18
		local var48_upvw = 24
	end
	local var49_upvr = var47_upvw * 2.4
	local var50_upvr = var49_upvr + 40
	if arg1.props.VisibilityTarget ~= 1 then
		var50_upvr = false
	else
		var50_upvr = true
	end
	local var53_upvw = 48
	local var54_upvw = 30
	local var55_upvr = var50_upvr + var48_upvw
	local var56_upvw = var47_upvw + 48
	return withLocalization_upvr({
		heading = arg1.props.Heading;
		search = arg1.props.SearchPlaceholder;
	})(function(arg1_5) -- Line 197
		--[[ Upvalues[17]:
			[1]: var50_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var46_upvr (readonly)
			[5]: var53_upvw (read and write)
			[6]: var48_upvw (read and write)
			[7]: AppFonts_upvr (copied, readonly)
			[8]: White_upvr (copied, readonly)
			[9]: SearchBar_upvr (copied, readonly)
			[10]: var49_upvr (readonly)
			[11]: Obsidian_upvr (copied, readonly)
			[12]: Flint_upvr (copied, readonly)
			[13]: var54_upvw (read and write)
			[14]: var47_upvw (read and write)
			[15]: WindowedListFrame_upvr (copied, readonly)
			[16]: var55_upvr (readonly)
			[17]: var56_upvw (read and write)
		]]
		local var57
		local var58
		if var50_upvr then
			var57 = false
		end
		local var59 = Roact_upvr
		if var50_upvr then
			var59 = "TextButton"
		else
			var59 = "Frame"
		end
		local module = {
			AutoButtonColor = var57;
		}
		if var50_upvr then
			var58 = ""
		else
			var58 = nil
		end
		module.Text = var58
		var58 = Color3.new(0, 0, 0)
		module.BackgroundColor3 = var58
		var58 = 1 - 0.5 * arg1.visibility
		module.BackgroundTransparency = var58
		var58 = UDim2.new(1, 0, 1, 0)
		module.Size = var58
		var58 = 0
		module.BorderSizePixel = var58
		var58 = {}
		var58[1] = Roact_upvr.createElement(arg1.renderWidgetBackground, {
			isWideScreen = var46_upvr;
			closeButtonSize = var53_upvw;
			Position = arg1.getWidgetPosition();
			CloseCallback = arg1.props.CloseCallback;
			Visible = arg1.state.visible;
			contents = {
				Heading = Roact_upvr.createElement("TextLabel", {
					Text = arg1_5.heading;
					Size = UDim2.new(1, 0, 0, var48_upvw);
					TextSize = var48_upvw;
					Font = AppFonts_upvr.default:getBold();
					TextColor3 = White_upvr;
					BackgroundTransparency = 1;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
				SearchBar = Roact_upvr.createElement(SearchBar_upvr, {
					Size = UDim2.new(1, 0, 0, var49_upvr);
					Position = UDim2.new(0, 0, 0, var48_upvw + 20);
					ImageColor3 = Obsidian_upvr;
					PlaceholderText = arg1_5.search;
					PlaceholderColor3 = Flint_upvr;
					IconSize = var54_upvw;
					Text = "";
					TextSize = var47_upvw;
					TextColor3 = White_upvr;
					TextChanged = arg1.searchTextChanged;
				});
				ListFrame = Roact_upvr.createElement(WindowedListFrame_upvr, {
					List = arg1.state.filteredList;
					ScrollingFrameOffset = var55_upvr;
					TextSize = var47_upvw;
					ButtonSizeY = var56_upvw;
					ListButton = arg1.props.ListButton;
					ListButtonProps = {
						TextSize = var47_upvw;
						SelectionCallback = arg1.props.SelectionCallback;
					};
				});
			};
		})
		return var59.createElement(var59, module, var58)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 255
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	if arg1.visibilityTarget ~= arg1.props.VisibilityTarget and arg1.motor then
		arg1.visibilityTarget = arg1.props.VisibilityTarget
		arg1.motor:setGoal(Otter_upvr.spring(arg1.visibilityTarget), {
			frequency = 3;
		})
		if 0 < arg1.visibilityTarget and not arg1.state.visible then
			arg1:setState({
				visible = true;
			})
		end
	end
	if arg2.List ~= arg1.props.List or arg1.props.VisibilityTarget == 1 and arg2.VisibilityTarget ~= 1 then
		arg1:setState({
			filteredList = arg1.props.List;
		})
	end
end
return require(Parent.RoactServices).RoactServices.connect({
	networking = require(Parent.RoactServiceTags).RoactNetworking;
})(require(Parent.RoactRodux).connect(function(arg1, arg2) -- Line 277
	return {
		formFactor = arg1.FormFactor;
	}
end)(any_extend_result1))