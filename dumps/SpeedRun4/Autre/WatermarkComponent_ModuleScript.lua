-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:41
-- Luau version 6, Types version 3
-- Time taken: 0.004814 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("WatermarkComponent")
local RunService_upvr = game:GetService("RunService")
local PolicyService_upvr = game:GetService("PolicyService")
function any_extend_result1.init(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: PolicyService_upvr (readonly)
	]]
	local function UpdateWatermarkVisibility_upvr() -- Line 18, Named "UpdateWatermarkVisibility"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: PolicyService_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		local var9 = not RunService_upvr:IsStudio()
		if var9 then
			var9 = false
			if PolicyService_upvr.IsLuobuServer == Enum.TriStateBoolean.True then
				if PolicyService_upvr.LuobuWhitelisted ~= Enum.TriStateBoolean.False then
					var9 = false
				else
					var9 = true
				end
			end
		end
		tbl_2.watermarkVisible = var9
		arg1:setState(tbl_2)
	end
	PolicyService_upvr:GetPropertyChangedSignal("IsLuobuServer"):connect(function() -- Line 26
		--[[ Upvalues[1]:
			[1]: UpdateWatermarkVisibility_upvr (readonly)
		]]
		UpdateWatermarkVisibility_upvr()
	end)
	PolicyService_upvr:GetPropertyChangedSignal("LuobuWhitelisted"):connect(function() -- Line 30
		--[[ Upvalues[1]:
			[1]: UpdateWatermarkVisibility_upvr (readonly)
		]]
		UpdateWatermarkVisibility_upvr()
	end)
	arg1:setState({
		absoluteSize = Vector2.new(0, 0);
		watermarkVisible = false;
	})
	function arg1.onAbsoluteSizeChange(arg1_2) -- Line 39
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			absoluteSize = arg1_2.AbsoluteSize;
		})
	end
	UpdateWatermarkVisibility_upvr()
end
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local function _() -- Line 49, Named "CalculateRotatedFrameWidth"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.state.absoluteSize.X * 0.9681476403781077 + arg1.state.absoluteSize.Y * 0.25038000405444144
	end
	local function _() -- Line 54, Named "CalculateRotatedFrameHeight"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.state.absoluteSize.Y * 0.9681476403781077 + arg1.state.absoluteSize.X * 0.25038000405444144
	end
	local var24
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var24 = var24("ScreenGui", tbl_5, tbl_4)
		tbl_4.FullScreenFrame = Roact_upvr.createElement("Frame", tbl_3, (function() -- Line 59, Named "CreateGridItems"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
			]]
			local module = {}
			for i = 0, math.ceil((arg1.state.absoluteSize.Y * 0.9681476403781077 + arg1.state.absoluteSize.X * 0.25038000405444144) / 450) - 1 do
				for i_2 = 0, math.ceil((arg1.state.absoluteSize.X * 0.9681476403781077 + arg1.state.absoluteSize.Y * 0.25038000405444144) / 450) - 1 do
					table.insert(module, Roact_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						TextTransparency = 0.75;
						Text = "仅用于测试，\n非正式发表。";
						TextSize = 30;
						TextColor3 = Color3.new(1, 1, 1);
						Size = UDim2.new(0, 225, 0, 225);
						Position = UDim2.new(0, i_2 * 450, 0, i * 450);
					}))
					table.insert(module, Roact_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						TextTransparency = 0.91;
						Text = "仅用于测试，\n非正式发表。";
						TextSize = 30;
						TextColor3 = Color3.new(0, 0, 0);
						Size = UDim2.new(0, 225, 0, 225);
						Position = UDim2.new(0, i_2 * 450 + 1, 0, i * 450 + 1);
					}))
					table.insert(module, Roact_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						TextTransparency = 0.75;
						Text = "仅用于测试，\n非正式发表。";
						TextSize = 30;
						TextColor3 = Color3.new(1, 1, 1);
						Size = UDim2.new(0, 225, 0, 225);
						Position = UDim2.new(0, i_2 * 450 + 225, 0, i * 450 + 225);
					}))
					table.insert(module, Roact_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						TextTransparency = 0.91;
						Text = "仅用于测试，\n非正式发表。";
						TextSize = 30;
						TextColor3 = Color3.new(0, 0, 0);
						Size = UDim2.new(0, 225, 0, 225);
						Position = UDim2.new(0, i_2 * 450 + 226, 0, i * 450 + 226);
					}))
				end
			end
			return module
		end)())
		tbl_3.Rotation = 14.5
		tbl_3.Position = UDim2.new(0, ((arg1.state.absoluteSize.X) - (arg1.state.absoluteSize.X * 0.9681476403781077 + arg1.state.absoluteSize.Y * 0.25038000405444144)) * 0.5, 0, ((arg1.state.absoluteSize.Y) - (arg1.state.absoluteSize.Y * 0.9681476403781077 + arg1.state.absoluteSize.X * 0.25038000405444144)) * 0.5)
		tbl_3.Size = UDim2.new(0, arg1.state.absoluteSize.X * 0.9681476403781077 + arg1.state.absoluteSize.Y * 0.25038000405444144, 0, arg1.state.absoluteSize.Y * 0.9681476403781077 + arg1.state.absoluteSize.X * 0.25038000405444144)
		tbl_3.BackgroundTransparency = 1
		local tbl_3 = {}
		local tbl_4 = {}
		tbl_5[Roact_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChange
		tbl_5.DisplayOrder = 10
		tbl_5.AutoLocalize = false
		tbl_5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		tbl_5.IgnoreGuiInset = true
		local tbl_5 = {}
		var24 = Roact_upvr.createElement
		return var24
	end
	if not arg1.state.watermarkVisible or not INLINED() then
		var24 = nil
	end
	return var24
end
return any_extend_result1