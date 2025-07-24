-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:08
-- Luau version 6, Types version 3
-- Time taken: 0.007178 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Constants)
local FrameHeight_upvr = Constants_upvr.TopBarFormatting.FrameHeight
local var5_upvr = 0.5 * FrameHeight_upvr
local any_extend_result1 = Roact_upvr.Component:extend("DevConsoleTopBar")
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.init(arg1) -- Line 24
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.inputChangedConnection = nil
	function arg1.inputBegan(arg1_2, arg2) -- Line 27
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		if arg1.props.isMinimized then
		elseif arg2.UserInputType == Enum.UserInputType.MouseButton1 then
			local AbsolutePosition = arg1.ref.current.AbsolutePosition
			if arg1.inputChangedConnection then
				arg1.inputChangedConnection:Disconnect()
				arg1.inputChangedConnection = nil
			end
			arg1.inputChangedConnection = UserInputService_upvr.InputChanged:Connect(function(arg1_3) -- Line 42
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.inputChanged(nil, arg1_3)
			end)
			arg1:setState({
				startPos = Vector3.new(AbsolutePosition.X, AbsolutePosition.Y, 0);
				startOffset = arg2.Position;
				moving = true;
			})
		end
	end
	function arg1.inputChanged(arg1_4, arg2) -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 8. Error Block 3 start (CF ANALYSIS FAILED)
		local var13 = arg1.state.startPos - arg1.state.startOffset + arg2.Position
		arg1.props.dispatchSetDevConsolePosition(UDim2.new(0, var13.X, 0, var13.Y))
		do
			return
		end
		-- KONSTANTERROR: [12] 8. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [43] 29. Error Block 7 start (CF ANALYSIS FAILED)
		if arg1.inputChangedConnection then
			arg1.inputChangedConnection:Disconnect()
			arg1.inputChangedConnection = nil
		end
		-- KONSTANTERROR: [43] 29. Error Block 7 end (CF ANALYSIS FAILED)
	end
	function arg1.inputEnded(arg1_5, arg2) -- Line 66
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseButton1 and arg2.UserInputState == Enum.UserInputState.End then
			if arg1.inputChangedConnection then
				arg1.inputChangedConnection:Disconnect()
				arg1.inputChangedConnection = nil
			end
			arg1:setState({
				moving = false;
			})
		end
	end
	arg1.ref = Roact_upvr.createRef()
end
local any_GetTextSize_result1_upvr = game:GetService("TextService"):GetTextSize("Developer Console", Constants_upvr.DefaultFontSize.TopBar, Constants_upvr.Font.TopBar, Vector2.new(0, 0))
local LiveUpdateElement_upvr = require(script.Parent.Parent.Components.LiveUpdateElement)
local var18_upvr = (FrameHeight_upvr - var5_upvr) / 2
function any_extend_result1.render(arg1) -- Line 86
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: any_GetTextSize_result1_upvr (readonly)
		[4]: FrameHeight_upvr (readonly)
		[5]: LiveUpdateElement_upvr (readonly)
		[6]: var5_upvr (readonly)
		[7]: var18_upvr (readonly)
	]]
	local isMinimized = arg1.props.isMinimized
	local module = {
		WindowTitle = Roact_upvr.createElement("TextLabel", {
			Text = "Developer Console";
			TextSize = Constants_upvr.DefaultFontSize.TopBar;
			TextColor3 = Color3.new(1, 1, 1);
			Font = Constants_upvr.Font.TopBar;
			Size = UDim2.new(0, any_GetTextSize_result1_upvr.X, 0, FrameHeight_upvr);
			Position = UDim2.new(0, 4, 0, 0);
			BackgroundColor3 = Constants_upvr.Color.BaseGray;
			BackgroundTransparency = 1;
			TextXAlignment = Enum.TextXAlignment.Left;
		});
	}
	local var22 = any_GetTextSize_result1_upvr.X + 8
	local udim2 = UDim2.new(0, var22, 0, 0)
	local udim2_2 = UDim2.new(1, -2 * var22, 0, FrameHeight_upvr)
	if isMinimized then
		udim2 = UDim2.new(0, 0, 1, 0)
		udim2_2 = UDim2.new(1, 0, 1, 0)
	elseif arg1.ref.current then
		udim2_2 = UDim2.new(0, arg1.ref.current.AbsoluteSize.X - 2 * any_GetTextSize_result1_upvr.X, 0, FrameHeight_upvr)
	end
	module.LiveStatsModule = Roact_upvr.createElement(LiveUpdateElement_upvr, {
		topBarLiveUpdate = arg1.props.topBarLiveUpdate;
		size = udim2_2;
		position = udim2;
	})
	if arg1.props.formFactor == Constants_upvr.FormFactor.Large then
		if not isMinimized then
			module.MinButton = Roact_upvr.createElement("ImageButton", {
				Size = UDim2.new(0, var5_upvr, 0, var5_upvr);
				Position = UDim2.new(1, -2 * FrameHeight_upvr + var18_upvr, 0, var18_upvr);
				BorderColor3 = Color3.new(1, 0, 0);
				BackgroundColor3 = Constants_upvr.Color.BaseGray;
				BackgroundTransparency = 1;
				Image = Constants_upvr.Image.Minimize;
				[Roact_upvr.Event.Activated] = arg1.props.onMinimizeClicked;
			})
		else
			module.MaxButton = Roact_upvr.createElement("ImageButton", {
				Size = UDim2.new(0, var5_upvr, 0, var5_upvr);
				Position = UDim2.new(1, -2 * FrameHeight_upvr + var18_upvr, 0, var18_upvr);
				BorderColor3 = Color3.new(0, 0, 1);
				BackgroundColor3 = Constants_upvr.Color.BaseGray;
				BackgroundTransparency = 1;
				Image = Constants_upvr.Image.Maximize;
				[Roact_upvr.Event.Activated] = arg1.props.onMaximizeClicked;
			})
		end
	end
	module.CloseButton = Roact_upvr.createElement("ImageButton", {
		Size = UDim2.new(0, var5_upvr, 0, var5_upvr);
		Position = UDim2.new(1, -FrameHeight_upvr + var18_upvr, 0, var18_upvr);
		BorderColor3 = Color3.new(0, 1, 0);
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		ZIndex = 2;
		Image = Constants_upvr.Image.Close;
		[Roact_upvr.Event.Activated] = arg1.props.onCloseClicked;
	})
	return Roact_upvr.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 0, FrameHeight_upvr);
		BackgroundColor3 = Constants_upvr.Color.Black;
		BackgroundTransparency = 0.5;
		AutoButtonColor = false;
		LayoutOrder = 1;
		[Roact_upvr.Ref] = arg1.ref;
		[Roact_upvr.Event.InputBegan] = arg1.inputBegan;
		[Roact_upvr.Event.InputEnded] = arg1.inputEnded;
	}, module)
end
local SetDevConsolePosition_upvr = require(script.Parent.Parent.Actions.SetDevConsolePosition)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 182, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetDevConsolePosition_upvr (readonly)
	]]
	return {
		dispatchSetDevConsolePosition = function(arg1_6) -- Line 184, Named "dispatchSetDevConsolePosition"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDevConsolePosition_upvr (copied, readonly)
			]]
			arg1(SetDevConsolePosition_upvr(arg1_6))
		end;
	}
end)(any_extend_result1)