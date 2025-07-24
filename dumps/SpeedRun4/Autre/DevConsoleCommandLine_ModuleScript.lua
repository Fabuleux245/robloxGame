-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:14
-- Luau version 6, Types version 3
-- Time taken: 0.003615 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DevConsoleCommandLine")
local LogService_upvr = game:GetService("LogService")
function any_extend_result1.init(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: LogService_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	function arg1.onFocusLost(arg1_2, arg2, arg3) -- Line 18
		--[[ Upvalues[1]:
			[1]: LogService_upvr (copied, readonly)
		]]
		if arg2 then
			LogService_upvr:ExecuteScript(arg1_2.Text)
			arg1_2:CaptureFocus()
		end
	end
	arg1.textbox = Roact_upvr.createRef()
end
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.didMount(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if not arg1.onFocusConnection then
		arg1.onFocusConnection = UserInputService_upvr.InputBegan:Connect(function(arg1_3) -- Line 30
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.textbox.current and arg1.textbox.current:IsFocused() then
				local current = arg1.textbox.current
				local ServerLogData = arg1.props.ServerLogData
				local any_getCommandLineHistory_result1 = ServerLogData:getCommandLineHistory()
				local any_getCommandLineIndex_result1_2 = ServerLogData:getCommandLineIndex()
				if arg1_3.KeyCode == Enum.KeyCode.Up then
					local minimum = math.min(any_getCommandLineHistory_result1:getSize(), any_getCommandLineIndex_result1_2 + 1)
					any_getCommandLineIndex_result1_2 = minimum
					current.Text = any_getCommandLineHistory_result1:reverseAt(minimum) or ""
				elseif arg1_3.KeyCode == Enum.KeyCode.Down then
					local maximum = math.max(0, any_getCommandLineIndex_result1_2 - 1)
					any_getCommandLineIndex_result1_2 = maximum
					current.Text = any_getCommandLineHistory_result1:reverseAt(maximum) or ""
				elseif arg1_3.KeyCode == Enum.KeyCode.Return then
					if 0 < #current.Text:gsub("%s+", "") and any_getCommandLineHistory_result1:reverseAt(1) ~= current.Text then
						any_getCommandLineHistory_result1:push_back(current.Text)
					end
					any_getCommandLineIndex_result1_2 = 0
				elseif any_getCommandLineIndex_result1_2 ~= 0 then
					any_getCommandLineIndex_result1_2 = 0
				end
				ServerLogData:setCommandLineIndex(any_getCommandLineIndex_result1_2)
			end
		end)
	end
	if not arg1.fixUnwantedReturnCapture then
		arg1.fixUnwantedReturnCapture = UserInputService_upvr.InputEnded:Connect(function(arg1_4) -- Line 70
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.textbox.current and arg1.textbox.current:IsFocused() and arg1_4.KeyCode == Enum.KeyCode.Return then
				arg1.textbox.current.Text = ""
			end
		end)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 80
	if arg1.onFocusConnection then
		arg1.onFocusConnection:Disconnect()
		arg1.onFocusConnection = nil
	end
	if arg1.fixUnwantedReturnCapture then
		arg1.fixUnwantedReturnCapture:Disconnect()
		arg1.fixUnwantedReturnCapture = nil
	end
end
local CommandLineIndent_upvr = Constants_upvr.LogFormatting.CommandLineIndent
local CommandLine_upvr = Constants_upvr.DefaultFontSize.CommandLine
local Log_upvr = Constants_upvr.Font.Log
local ScrollingTextBox_upvr = require(script.Parent.Parent.ScrollingTextBox)
function any_extend_result1.render(arg1) -- Line 91
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: CommandLineIndent_upvr (readonly)
		[4]: CommandLine_upvr (readonly)
		[5]: Log_upvr (readonly)
		[6]: ScrollingTextBox_upvr (readonly)
	]]
	local height = arg1.props.height
	local var20 = ""
	local any_getCommandLineIndex_result1 = arg1.props.ServerLogData:getCommandLineIndex()
	if any_getCommandLineIndex_result1 ~= 0 then
		var20 = arg1.props.ServerLogData:getCommandLineHistory():reverseAt(any_getCommandLineIndex_result1) or ""
	end
	return Roact_upvr.createElement("Frame", {
		Position = arg1.props.pos;
		Size = UDim2.new(1, 0, 0, height);
		BackgroundTransparency = 0;
		BackgroundColor3 = Constants_upvr.Color.TextBoxGray;
		BorderColor3 = Constants_upvr.Color.BorderGray;
		BorderSizePixel = 1;
	}, {
		Arrow = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(0, CommandLineIndent_upvr, 1, 0);
			BackgroundTransparency = 1;
			TextSize = CommandLine_upvr;
			Font = Log_upvr;
			Text = "> ";
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = Enum.TextXAlignment.Right;
		});
		InputField = Roact_upvr.createElement(ScrollingTextBox_upvr, {
			Position = UDim2.new(0, CommandLineIndent_upvr, 0, 0);
			Size = UDim2.new(1, -CommandLineIndent_upvr, 0, height);
			ShowNativeInput = true;
			ClearTextOnFocus = false;
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = 0;
			TextSize = CommandLine_upvr;
			Text = var20;
			Font = Log_upvr;
			PlaceholderText = "command line";
			[Roact_upvr.Ref] = arg1.textbox;
			TextBoxFocusLost = arg1.onFocusLost;
		});
	})
end
return require(script.Parent.Parent.DataConsumer)(any_extend_result1, "ServerLogData")