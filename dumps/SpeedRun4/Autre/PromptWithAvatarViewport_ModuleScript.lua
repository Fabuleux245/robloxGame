-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:57
-- Luau version 6, Types version 3
-- Time taken: 0.004494 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("PromptWithAvatarViewport")
any_extend_result1.validateProps = t.strictInterface({
	humanoidDescription = t.instanceOf("HumanoidDescription");
	rigType = t.enum(Enum.HumanoidRigType);
	title = t.string;
	bodyText = t.optional(t.string);
	buttonStackInfo = t.table;
	screenSize = t.Vector2;
})
function any_extend_result1.init(arg1) -- Line 41
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.mounted = false
	arg1.middleContentRef = Roact_upvr.createRef()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.new(1, 0, 0, 200))
	arg1.contentSize = any_createBinding_result1
	arg1.updateContentSize = any_createBinding_result2
	arg1:setState({
		conformedHumanoidDescription = nil;
		getConformedDescriptionFailed = false;
	})
	function arg1.onAlertSizeChanged(arg1_2) -- Line 52
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var11
		if not arg1.middleContentRef:getValue() then
		else
			var11 = arg1.middleContentRef:getValue()
			local Y = var11.AbsoluteSize.Y
			var11 = arg1_2.AbsoluteSize.Y
			var11 = (arg1.props.screenSize.Y - 60) - (var11 - Y)
			local var13 = arg1.middleContentRef:getValue().AbsoluteSize.X - 20
			if var13 < var11 then
				var11 = var13
			end
			if Y ~= var11 then
				arg1.updateContentSize(UDim2.new(1, 0, 0, var11))
			end
		end
	end
	function arg1.retryLoadDescription() -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			getConformedDescriptionFailed = false;
		})
		arg1:getConformedHumanoidDescription()
	end
end
local HumanoidViewport_upvr = require(Parent.HumanoidViewport)
function any_extend_result1.renderAlertMiddleContent(arg1) -- Line 83
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: HumanoidViewport_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = arg1.contentSize;
		[Roact_upvr.Ref] = arg1.middleContentRef;
	}, {
		HumanoidViewport = Roact_upvr.createElement(HumanoidViewport_upvr, {
			humanoidDescription = arg1.state.conformedHumanoidDescription;
			loadingFailed = arg1.state.getConformedDescriptionFailed;
			retryLoadDescription = arg1.retryLoadDescription;
			rigType = arg1.props.rigType;
		});
	})
end
local InteractiveAlert_upvr = require(CorePackages.Packages.UIBlox).App.Dialog.Alert.InteractiveAlert
function any_extend_result1.render(arg1) -- Line 102
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
	]]
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		title = arg1.props.title;
		bodyText = arg1.props.bodyText;
		buttonStackInfo = arg1.props.buttonStackInfo;
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = arg1.props.screenSize;
		middleContent = function() -- Line 109, Named "middleContent"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:renderAlertMiddleContent()
		end;
		onAbsoluteSizeChanged = arg1.onAlertSizeChanged;
		isMiddleContentFocusable = false;
	})
end
local GetConformedHumanoidDescription_upvr = require(Parent.Parent.GetConformedHumanoidDescription)
function any_extend_result1.getConformedHumanoidDescription(arg1, arg2) -- Line 117
	--[[ Upvalues[1]:
		[1]: GetConformedHumanoidDescription_upvr (readonly)
	]]
	GetConformedHumanoidDescription_upvr(arg2, true):andThen(function(arg1_3) -- Line 119
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.mounted then
		else
			local tbl = {}
			tbl.conformedHumanoidDescription = arg1_3
			arg1:setState(tbl)
		end
	end, function(arg1_4) -- Line 127
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.mounted then
		else
			arg1:setState({
				getConformedDescriptionFailed = true;
			})
		end
	end)
end
function any_extend_result1.didMount(arg1) -- Line 138
	arg1.mounted = true
	arg1:getConformedHumanoidDescription(arg1.props.humanoidDescription)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 144
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	if arg2.humanoidDescription ~= arg1.props.humanoidDescription then
		arg1:setState({
			conformedHumanoidDescription = Roact_upvr.None;
			getConformedDescriptionFailed = false;
		})
		arg1:getConformedHumanoidDescription(arg1.props.humanoidDescription)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 155
	arg1.mounted = false
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 159, Named "mapStateToProps"
	return {
		screenSize = arg1.screenSize;
	}
end, nil)(any_extend_result1)