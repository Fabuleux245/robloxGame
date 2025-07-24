-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:30
-- Luau version 6, Types version 3
-- Time taken: 0.001915 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Theme_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Settings.Theme)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ShareButton")
function any_extend_result1.init(arg1) -- Line 14
	arg1.state = {
		isHovering = false;
	}
end
local Color3_fromRGB_result1_upvr = Color3.fromRGB(222, 225, 227)
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(255, 255, 255)
local any_textSize_result1_upvr = Theme_upvr.textSize(19)
local any_font_result1_upvr = Theme_upvr.font(Enum.Font.SourceSansSemibold, "Semibold")
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: Color3_fromRGB_result1_upvr_2 (readonly)
		[4]: Theme_upvr (readonly)
		[5]: any_textSize_result1_upvr (readonly)
		[6]: any_font_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local isEnabled_upvr = arg1.props.isEnabled
	local tbl_3 = {}
	local tbl = {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	}
	local var12
	if arg1.state.isHovering and isEnabled_upvr then
		var12 = Color3_fromRGB_result1_upvr
	else
		var12 = Color3_fromRGB_result1_upvr_2
	end
	tbl.Color = var12
	var12 = Theme_upvr.DefaultStokeThickness
	tbl.Thickness = var12
	if isEnabled_upvr then
		var12 = 0
		-- KONSTANTWARNING: GOTO [51] #33
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 32. Error Block 30 start (CF ANALYSIS FAILED)
	var12 = 0.5
	tbl.Transparency = var12
	tbl_3.Border = Roact_upvr.createElement("UIStroke", tbl)
	local tbl_2 = {}
	var12 = Theme_upvr.DefaultCornerRadius
	tbl_2.CornerRadius = var12
	tbl_3.UICorner = Roact_upvr.createElement("UICorner", tbl_2)
	local module = {
		LayoutOrder = arg1.props.layoutOrder;
		Size = arg1.props.size;
		Text = arg1.props.text;
	}
	var12 = any_textSize_result1_upvr
	module.TextSize = var12
	var12 = any_font_result1_upvr
	module.Font = var12
	var12 = false
	module.AutoButtonColor = var12
	if arg1.state.isHovering and isEnabled_upvr then
		var12 = Color3_fromRGB_result1_upvr
	else
		var12 = Color3_fromRGB_result1_upvr_2
	end
	module.BackgroundColor3 = var12
	if isEnabled_upvr then
		var12 = 0
	else
		var12 = 0.5
	end
	module.Transparency = var12
	var12 = Roact_upvr.Event.Activated
	local onShare_upvr = arg1.props.onShare
	module[var12] = function() -- Line 48
		--[[ Upvalues[2]:
			[1]: isEnabled_upvr (readonly)
			[2]: onShare_upvr (readonly)
		]]
		if isEnabled_upvr then
			onShare_upvr()
		end
	end
	var12 = Roact_upvr.Event.InputBegan
	module[var12] = function() -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovering = true;
		})
	end
	var12 = Roact_upvr.Event.InputEnded
	module[var12] = function() -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovering = false;
		})
	end
	var12 = tbl_3
	do
		return Roact_upvr.createElement("TextButton", module, var12)
	end
	-- KONSTANTERROR: [50] 32. Error Block 30 end (CF ANALYSIS FAILED)
end
return any_extend_result1