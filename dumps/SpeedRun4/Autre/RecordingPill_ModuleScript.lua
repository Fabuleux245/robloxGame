-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:37
-- Luau version 6, Types version 3
-- Time taken: 0.004419 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuIcon")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.integer;
})
local Game_Options_upvr = settings():WaitForChild("Game Options")
local CoreGui_upvr = game:GetService("CoreGui")
function any_extend_result1.init(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: Game_Options_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
	]]
	arg1.state = {
		recording = false;
		recordingText = "0:00";
	}
	arg1.recordingConnection = Game_Options_upvr:GetPropertyChangedSignal("VideoRecording"):Connect(function() -- Line 34
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Game_Options_upvr (copied, readonly)
		]]
		arg1:setState({
			recording = Game_Options_upvr.VideoRecording;
		})
	end)
	function arg1.RecordingPillActivated() -- Line 40
		--[[ Upvalues[1]:
			[1]: CoreGui_upvr (copied, readonly)
		]]
		CoreGui_upvr:ToggleRecording()
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local udim2_upvr = UDim2.fromOffset(77, 28)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local udim2_upvr_2 = UDim2.fromOffset(27, 14)
function any_extend_result1.render(arg1) -- Line 46
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: udim2_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: udim2_upvr_2 (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 47
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: udim2_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: udim2_upvr_2 (copied, readonly)
		]]
		return Roact_upvr.createFragment({
			Button = Roact_upvr.createElement("Frame", {
				Visible = arg1.state.recording;
				AutomaticSize = Enum.AutomaticSize.XY;
				LayoutOrder = arg1.props.layoutOrder;
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0, 1);
			}, {
				ActualButton = Roact_upvr.createElement("TextButton", {
					Text = "";
					BackgroundTransparency = 0;
					BackgroundColor3 = arg1_2.Theme.Alert.Color;
					BorderSizePixel = 0;
					Size = udim2_upvr;
					Position = UDim2.new(0, 0, 1, -30);
					[Roact_upvr.Event.Activated] = arg1.RecordingPillActivated;
				}, {
					UICorner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, 18);
					});
					Layout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
					});
					Image = Roact_upvr.createElement(ImageSetLabel_upvr, {
						BackgroundTransparency = 1;
						Image = Images_upvr["icons/controls/screenrecord"];
						Size = UDim2.new(0, 28, 0, 28);
						Position = UDim2.new(0.4, 0, 0.5, 0);
						AnchorPoint = Vector2.new(0.4, 0.5);
					});
					TextLabel = Roact_upvr.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.XY;
						BackgroundTransparency = 1;
						Size = udim2_upvr_2;
						Text = arg1.state.recordingText;
						LayoutOrder = 2;
						TextColor3 = arg1_2.Theme.TextEmphasis.Color;
						TextWrapped = true;
						TextXAlignment = Enum.TextXAlignment.Center;
						TextYAlignment = Enum.TextYAlignment.Center;
					});
				});
			});
		})
	end)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 99
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.startRecording = true
	local tick_result1_upvr = tick()
	local function loop_upvr() -- Line 104, Named "loop"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: loop_upvr (readonly)
			[3]: tick_result1_upvr (readonly)
		]]
		if arg1.state.recording then
			delay(0.2, loop_upvr)
		end
		local os_date_result1 = os.date("*t", tick() - tick_result1_upvr)
		arg1:setState({
			recordingText = "%d:%02d":format(os_date_result1.min, os_date_result1.sec);
		})
	end
	delay(0.2, loop_upvr)
	do
		return
	end
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 19. Error Block 4 start (CF ANALYSIS FAILED)
	tick_result1_upvr = false
	arg1.startRecording = tick_result1_upvr
	-- KONSTANTERROR: [24] 19. Error Block 4 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 121
	if arg1.recordingConnection then
		arg1.recordingConnection:Disconnect()
		arg1.recordingConnection = nil
	end
end
return any_extend_result1