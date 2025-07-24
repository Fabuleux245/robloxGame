-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:24
-- Luau version 6, Types version 3
-- Time taken: 0.004031 seconds

local CorePackages = game:GetService("CorePackages")
local RunService_upvr = game:GetService("RunService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Otter_upvr = require(CorePackages.Packages.Otter)
local t = require(CorePackages.Packages.t)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local tbl_3_upvr = {
	frequency = 4;
	dampingRatio = 1;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("PermissionsButtons")
any_extend_result1.validateProps = t.strictInterface({
	micOn = t.boolean;
	isSmallTouchScreen = t.optional(t.boolean);
})
function any_extend_result1.init(arg1) -- Line 27
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1:setState({
		lastVoiceRecordingIndicatorTextUpdated = tick();
		voiceRecordingIndicatorTextMotor = Otter_upvr.createSingleMotor(1);
		textOpacity = 1;
	})
end
function any_extend_result1.didMount(arg1) -- Line 35
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	task.spawn(function() -- Line 36
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: Otter_upvr (copied, readonly)
			[4]: tbl_3_upvr (copied, readonly)
		]]
		arg1.state.voiceRecordingIndicatorTextMotor:onStep(function(arg1_2) -- Line 37
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			local tbl = {}
			tbl.textOpacity = arg1_2
			arg1:setState(tbl)
		end)
		RunService_upvr:BindToRenderStep("RoactVoiceRecordingIndicator", Enum.RenderPriority.Last.Value, function() -- Line 42
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: Otter_upvr (copied, readonly)
				[3]: tbl_3_upvr (copied, readonly)
			]]
			if 5 <= tick() - arg1.state.lastVoiceRecordingIndicatorTextUpdated and not arg1.props.micOn and 1 <= arg1.state.textOpacity then
				arg1.state.voiceRecordingIndicatorTextMotor:setGoal(Otter_upvr.spring(0, tbl_3_upvr))
				arg1.state.voiceRecordingIndicatorTextMotor:start()
			end
		end)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	arg1.state.voiceRecordingIndicatorTextMotor:destroy()
	RunService_upvr:UnbindFromRenderStep("RoactVoiceRecordingIndicator")
end
function any_extend_result1.shouldUpdate(arg1, arg2, arg3) -- Line 61
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	if arg1.props.micOn ~= arg2.micOn then
		arg1:setState({
			lastVoiceRecordingIndicatorTextUpdated = tick();
		})
		if arg2.micOn then
			arg1.state.voiceRecordingIndicatorTextMotor:setGoal(Otter_upvr.spring(1, tbl_3_upvr))
			arg1.state.voiceRecordingIndicatorTextMotor:start()
		end
	end
	local var18 = true
	if arg1.props.micOn == arg2.micOn then
		if arg1.state.textOpacity == arg3.textOpacity then
			var18 = false
		else
			var18 = true
		end
	end
	return var18
end
local any_FormatByKey_result1_upvr_2 = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.MicOnRecording")
local any_FormatByKey_result1_upvr = RobloxTranslator:FormatByKey("InGame.CommonUI.Label.MicOff")
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
function any_extend_result1.render(arg1) -- Line 74
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: any_FormatByKey_result1_upvr_2 (readonly)
		[3]: any_FormatByKey_result1_upvr (readonly)
		[4]: AppFonts_upvr (readonly)
	]]
	local module = {}
	local var23
	if arg1.props.micOn then
		var23 = any_FormatByKey_result1_upvr_2
	else
		var23 = any_FormatByKey_result1_upvr
	end
	module.Text = var23
	var23 = Enum.AutomaticSize.XY
	module.AutomaticSize = var23
	var23 = arg1.props.hasMicPermissions
	module.Visible = var23
	if arg1.props.isSmallTouchScreen then
		var23 = 10
	else
		var23 = 12
	end
	module.TextSize = var23
	var23 = AppFonts_upvr.default:getMedium()
	module.Font = var23
	var23 = Enum.TextXAlignment.Left
	module.TextXAlignment = var23
	var23 = Enum.TextYAlignment.Center
	module.TextYAlignment = var23
	var23 = Color3.fromRGB(255, 255, 255)
	module.TextColor3 = var23
	var23 = 1 - arg1.state.textOpacity
	module.TextTransparency = var23
	var23 = 1
	module.BackgroundTransparency = var23
	var23 = 6
	module.LayoutOrder = var23
	var23 = true
	module.TextWrapped = var23
	return Roact_upvr.createElement("TextLabel", module)
end
return any_extend_result1