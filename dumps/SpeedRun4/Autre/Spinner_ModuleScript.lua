-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:42
-- Luau version 6, Types version 3
-- Time taken: 0.002958 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("Spinner")
any_extend_result1_upvr.defaultProps = {
	Size = UDim2.new(0, 20, 0, 20);
	spinSpeed = 540;
}
any_extend_result1_upvr.validateProps = t.interface({
	isSpinning = t.optional(t.boolean);
	spinSpeed = t.optional(t.number);
	Size = t.optional(t.UDim2);
	Position = t.optional(t.UDim2);
	AnchorPoint = t.optional(t.Vector2);
	ImageColor3 = t.optional(t.Color3);
	ImageTransparency = t.optional(t.number);
	forwardRef = t.optional(t.table);
})
function any_extend_result1_upvr.init(arg1) -- Line 37
	function arg1.renderSteppedCallback(arg1_2) -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isSpinning and arg1.ref.current then
			arg1.ref.current.Rotation = arg1.ref.current.Rotation + arg1.props.spinSpeed * arg1_2
		end
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local ExternalEventConnection_upvr = require(script.Parent.ExternalEventConnection)
local RunService_upvr = game:GetService("RunService")
function any_extend_result1_upvr.render(arg1) -- Line 48
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: ExternalEventConnection_upvr (readonly)
		[6]: RunService_upvr (readonly)
	]]
	local forwardRef = arg1.props.forwardRef
	if not forwardRef then
		forwardRef = arg1.ref
		if not forwardRef then
			forwardRef = Roact_upvr.createRef()
		end
	end
	arg1.ref = forwardRef
	local Size_upvr_2 = arg1.props.Size
	local Position_upvr_2 = arg1.props.Position
	local AnchorPoint_upvr_2 = arg1.props.AnchorPoint
	local ImageColor3_upvr = arg1.props.ImageColor3
	local ImageTransparency_upvr = arg1.props.ImageTransparency
	local isSpinning_upvr = arg1.props.isSpinning
	return withStyle_upvr(function(arg1_4) -- Line 60
		--[[ Upvalues[12]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetLabel_upvr (copied, readonly)
			[3]: Size_upvr_2 (readonly)
			[4]: Position_upvr_2 (readonly)
			[5]: AnchorPoint_upvr_2 (readonly)
			[6]: Images_upvr (copied, readonly)
			[7]: ImageColor3_upvr (readonly)
			[8]: ImageTransparency_upvr (readonly)
			[9]: arg1 (readonly)
			[10]: isSpinning_upvr (readonly)
			[11]: ExternalEventConnection_upvr (copied, readonly)
			[12]: RunService_upvr (copied, readonly)
		]]
		local module_2 = {
			Size = Size_upvr_2;
			Position = Position_upvr_2;
			AnchorPoint = AnchorPoint_upvr_2;
			BackgroundTransparency = 1;
			Image = Images_upvr["icons/common/refresh"];
		}
		local var37 = ImageColor3_upvr
		if not var37 then
			var37 = arg1_4.Theme.SystemPrimaryDefault.Color
		end
		module_2.ImageColor3 = var37
		var37 = ImageTransparency_upvr
		local var38 = var37
		if not var38 then
			var38 = arg1_4.Theme.SystemPrimaryDefault.Transparency
		end
		module_2.ImageTransparency = var38
		module_2[Roact_upvr.Ref] = arg1.ref
		local module_4 = {}
		local var40 = isSpinning_upvr
		if var40 then
			var40 = Roact_upvr.createElement
			var40 = var40(ExternalEventConnection_upvr, {
				event = RunService_upvr.renderStepped;
				callback = arg1.renderSteppedCallback;
			})
		end
		module_4.renderStepped = var40
		return Roact_upvr.createElement(ImageSetLabel_upvr, module_2, module_4)
	end)
end
local Cryo_upvr = dependencies.Cryo
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 79
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_3 = {}
	module_3.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_3))
end)