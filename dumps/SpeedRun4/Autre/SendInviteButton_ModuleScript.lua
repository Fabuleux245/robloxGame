-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:39
-- Luau version 6, Types version 3
-- Time taken: 0.010209 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local InviteStatus_upvr = require(script.Parent.Parent.Parent.Resources.Constants).InviteStatus
local any_extend_result1 = Roact_upvr.PureComponent:extend("SendInviteButton")
any_extend_result1.validateProps = t.strictInterface({
	onActivated = t.callback;
	animationBegun = t.callback;
	animationEnded = t.callback;
	userInviteStatus = t.optional(t.string);
})
local function _(arg1, arg2, arg3) -- Line 35, Named "linearTween"
	return (arg1 - arg2 / 30) / ((arg3 - arg2) / 30)
end
local function _(arg1, arg2, arg3) -- Line 40, Named "isBetweenFrames"
	local var8 = false
	if arg2 / 30 <= arg1 then
		if arg1 > arg3 / 30 then
			var8 = false
		else
			var8 = true
		end
	end
	return var8
end
local tbl_upvr = {
	[InviteStatus_upvr.Pending] = function(arg1, arg2) -- Line 45
		arg2.sendTransparency(math.sin((-math.pi*2) * arg1) * 0.375 + 0.375)
	end;
	[InviteStatus_upvr.Success] = function(arg1, arg2, arg3) -- Line 54
		local var12 = false
		if 0 <= arg1 then
			if arg1 > 0.13333333333333333 then
				var12 = false
			else
				var12 = true
			end
		end
		if var12 then
			local var13 = (arg1 - 0) / 0.13333333333333333
			arg2.sendTransparency(var13)
			arg2.successTransparency(1 - var13)
			arg2.successSize(0.75 + 0.75 * (1 - var13))
		else
			var13 = false
			local var14 = var13
			if 0.13333333333333333 <= arg1 then
				if arg1 > 0.3 then
					var14 = false
				else
					var14 = true
				end
			end
			if var14 then
				arg2.sendTransparency(1)
				arg2.successTransparency(0)
				arg2.successSize(0.75 + (0.25) * ((arg1 - 0.13333333333333333) / 0.16666666666666666))
				return
			end
			arg2.successSize(1)
			arg3()
		end
	end;
	[InviteStatus_upvr.Failed] = function(arg1, arg2, arg3) -- Line 85
		local var16 = false
		if 0 <= arg1 then
			if arg1 > 0.06666666666666667 then
				var16 = false
			else
				var16 = true
			end
		end
		if var16 then
			arg2.sendTransparency((arg1 - 0) / 0.13333333333333333)
		else
			local var17 = false
			if 0.06666666666666667 <= arg1 then
				if arg1 > 1.7333333333333334 then
					var17 = false
				else
					var17 = true
				end
			end
			if var17 then
				arg2.sendTransparency(1)
			else
				local var18 = false
				if 1.7333333333333334 <= arg1 then
					if arg1 > 1.9 then
						var18 = false
					else
						var18 = true
					end
				end
				if var18 then
					arg2.sendTransparency(1 - (arg1 - 1.7333333333333334) / 0.16666666666666666)
				else
					arg2.sendTransparency(0)
					arg3()
				end
			end
		end
		local var19 = false
		if 0 <= arg1 then
			if arg1 > 0.13333333333333333 then
				var19 = false
			else
				var19 = true
			end
		end
		if var19 then
			arg2.failTransparency(1 - (arg1 - 0) / 0.13333333333333333)
		else
			local var20 = false
			if 0.13333333333333333 <= arg1 then
				if arg1 > 1.4 then
					var20 = false
				else
					var20 = true
				end
			end
			if var20 then
				arg2.failTransparency(0)
				local var21 = arg1 - 0.13333333333333333
				arg2.failPos(-0.4 * 2.71828182846 ^ (-var21 * 8) * math.sin(var21 * 40))
				return
			end
			var21 = false
			local var22 = var21
			if 1.4 <= arg1 then
				if arg1 > 1.5666666666666667 then
					var22 = false
				else
					var22 = true
				end
			end
			if var22 then
				arg2.failPos(0)
				arg2.failTransparency((arg1 - 1.4) / 0.16666666666666666)
				return
			end
			arg2.failTransparency(1)
		end
	end;
}
function any_extend_result1.init(arg1, arg2) -- Line 142
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: InviteStatus_upvr (readonly)
	]]
	local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(0)
	local any_createBinding_result1_5, any_createBinding_result2_2 = Roact_upvr.createBinding(1)
	local any_createBinding_result1_4, any_createBinding_result2 = Roact_upvr.createBinding(1)
	local any_createBinding_result1_3, any_createBinding_result2_4 = Roact_upvr.createBinding(1)
	local any_createBinding_result1, any_createBinding_result2_5 = Roact_upvr.createBinding(0)
	arg1.bindings = {
		sendTransparency = any_createBinding_result1_2;
		successTransparency = any_createBinding_result1_5;
		failTransparency = any_createBinding_result1_4;
		successSize = any_createBinding_result1_3:map(function(arg1_2) -- Line 154
			return UDim2.new(arg1_2, 0, arg1_2, 0)
		end);
		failPos = any_createBinding_result1:map(function(arg1_3) -- Line 157
			return UDim2.new(arg1_3, 0, 0, 0)
		end);
	}
	arg1.updateBindings = {
		sendTransparency = any_createBinding_result2_3;
		successTransparency = any_createBinding_result2_2;
		failTransparency = any_createBinding_result2;
		successSize = any_createBinding_result2_4;
		failPos = any_createBinding_result2_5;
	}
	if arg2.userInviteStatus == InviteStatus_upvr.Success then
		any_createBinding_result2_2(0)
		any_createBinding_result2_3(1)
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.renderWithSelectionCursor(arg1, arg2) -- Line 176
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
		[4]: InviteStatus_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: Images_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_4) -- Line 179
		--[[ Upvalues[8]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: CursorKind_upvr (copied, readonly)
			[4]: props_upvr (readonly)
			[5]: InviteStatus_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: Images_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("TextButton", {
			Selectable = false;
			Size = UDim2.new(0, 36, 0, 36);
			BackgroundTransparency = 1;
			Text = "";
			SelectionImageObject = arg2(CursorKind_upvr.InputFields);
			[Roact_upvr.Event.Activated] = function() -- Line 187
				--[[ Upvalues[3]:
					[1]: props_upvr (copied, readonly)
					[2]: InviteStatus_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var45
				if props_upvr.userInviteStatus ~= InviteStatus_upvr.Pending then
					var45 = false
				else
					var45 = true
				end
				if props_upvr.userInviteStatus ~= InviteStatus_upvr.Success then
				else
				end
				if not arg1.renderSteppedConnection and not var45 and not true then
					props_upvr.onActivated()
				end
			end;
		}, {
			SendLabel = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/actions/friends/friendInvite"];
				Size = UDim2.new(1, 0, 1, 0);
				ImageColor3 = arg1_4.Theme.IconEmphasis.Color;
				ImageTransparency = arg1.bindings.sendTransparency;
			});
			SuccessLabel = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/status/success"];
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				ImageColor3 = arg1_4.Theme.IconEmphasis.Color;
				ImageTransparency = arg1.bindings.successTransparency;
				Size = arg1.bindings.successSize;
			});
			FailLabel = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/status/alert"];
				Size = UDim2.new(1, 0, 1, 0);
				ImageColor3 = arg1_4.Theme.IconEmphasis.Color;
				ImageTransparency = arg1.bindings.failTransparency;
				Position = arg1.bindings.failPos;
			});
		})
	end)
end
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
function any_extend_result1.render(arg1) -- Line 226
	--[[ Upvalues[1]:
		[1]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 227
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderWithSelectionCursor(arg1_5)
	end)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 232
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1.props.userInviteStatus and arg1.props.userInviteStatus ~= arg2.userInviteStatus then
		arg1:playAnimation(tbl_upvr[arg1.props.userInviteStatus])
	end
end
function any_extend_result1.didMount(arg1) -- Line 238
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if arg1.props.userInviteStatus then
		arg1:playAnimation(tbl_upvr[arg1.props.userInviteStatus])
	end
end
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.playAnimation(arg1, arg2) -- Line 244
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	arg1.animationStartTime = tick()
	arg1.animationFunction = arg2
	if not arg1.renderSteppedConnection then
		arg1.renderSteppedConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 249
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.animationFunction(tick() - arg1.animationStartTime, arg1.updateBindings, function() -- Line 250
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:stopAnimation()
			end)
		end)
		arg1.props.animationBegun()
	end
end
function any_extend_result1.stopAnimation(arg1) -- Line 258
	if arg1.renderSteppedConnection then
		arg1.renderSteppedConnection:Disconnect()
		arg1.renderSteppedConnection = nil
		arg1.props.animationEnded()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 266
	arg1:stopAnimation()
end
return any_extend_result1