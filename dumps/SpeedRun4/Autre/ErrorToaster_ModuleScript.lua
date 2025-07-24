-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:21
-- Luau version 6, Types version 3
-- Time taken: 0.003497 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants_upvr = require(ShareGame.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ErrorToaster")
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.restartTimer(arg1) -- Line 26
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if not arg1.timerConnection then
		arg1.timerConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 28
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local failedInvites_2 = arg1.props.failedInvites
			if #failedInvites_2 == 0 then
				arg1:stopTimer()
			elseif failedInvites_2[#failedInvites_2].timeStamp + 4 < tick() then
				arg1:stopTimer()
			end
		end)
	end
end
function any_extend_result1.stopTimer(arg1) -- Line 47
	if arg1.timerConnection then
		arg1.timerConnection:Disconnect()
		arg1.timerConnection = nil
	end
	arg1.props.stoppedTimerDispatch()
end
function any_extend_result1.didUpdate(arg1) -- Line 56
	if #arg1.props.failedInvites ~= 0 then
		arg1:restartTimer()
	end
end
local InviteStatus_upvr = Constants_upvr.InviteStatus
local Theme_upvr = require(RobloxGui.Modules.Settings.Theme)
local var12_upvr = require(ShareGame.getTranslator)()
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[5]:
		[1]: Constants_upvr (readonly)
		[2]: InviteStatus_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Theme_upvr (readonly)
		[5]: var12_upvr (readonly)
	]]
	local failedInvites = arg1.props.failedInvites
	if #failedInvites == 0 then return end
	local var14
	local status = failedInvites[#failedInvites].status
	if status == InviteStatus_upvr.Moderated then
		var14 = "Feature.SettingsHub.Label.ModeratedInviteError"
	elseif status == InviteStatus_upvr.Failed then
		var14 = "Feature.SettingsHub.Label.GameInviteError"
	else
		return
	end
	return Roact_upvr.createElement("ScreenGui", {
		DisplayOrder = 2;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, {
		ToastFrame = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundColor3 = Constants_upvr.Color.RED;
			BorderSizePixel = 0;
			Position = UDim2.new(0.5, 0, 0, 0);
			Size = UDim2.new(0.5, 0, 0, Constants_upvr.LayoutSpecific[arg1.props.deviceLayout].TOAST_HEIGHT);
		}, {
			InnerTextPadding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 6);
				PaddingRight = UDim.new(0, 6);
			});
			ToastText = Roact_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = Theme_upvr.font(Enum.Font.SourceSansSemibold, "Semibold");
				Size = UDim2.new(1, 0, 1, 0);
				Text = var12_upvr:FormatByKey(var14);
				TextColor3 = Constants_upvr.Color.WHITE;
				TextSize = Theme_upvr.textSize(16);
				TextWrapped = true;
			});
		});
	})
end
local StoppedToastTimer_upvr = require(ShareGame.Actions.StoppedToastTimer)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 113, Named "mapStateToProps"
	return {
		deviceLayout = arg1.DeviceInfo.DeviceLayout;
		failedInvites = arg1.Toasts.failedInvites;
	}
end, function(arg1) -- Line 120, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: StoppedToastTimer_upvr (readonly)
	]]
	return {
		stoppedTimerDispatch = function() -- Line 122, Named "stoppedTimerDispatch"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: StoppedToastTimer_upvr (copied, readonly)
			]]
			arg1(StoppedToastTimer_upvr())
		end;
	}
end)(any_extend_result1)