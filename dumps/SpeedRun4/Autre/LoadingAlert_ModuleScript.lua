-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:27
-- Luau version 6, Types version 3
-- Time taken: 0.002118 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Roact_upvr = require(Parent_3.Roact)
local t = require(Parent_3.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LoadingAlert")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	screenSize = t.Vector2;
	onMounted = t.optional(t.callback);
	titleIcon = t.optional(t.union(t.table, t.string));
	title = t.string;
})
local LoadingSpinner_upvr = require(Parent.App.Loading.LoadingSpinner)
function any_extend_result1.init(arg1) -- Line 43
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LoadingSpinner_upvr (readonly)
	]]
	function arg1.renderMiddleContent() -- Line 44
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LoadingSpinner_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 48);
			BackgroundTransparency = 1;
		}, {
			Spinner = Roact_upvr.createElement(LoadingSpinner_upvr, {
				size = UDim2.fromOffset(48, 48);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			});
		})
	end
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local Alert_upvr = require(Parent_2.Alert)
local AlertType_upvr = require(Parent_2.Enum.AlertType)
local FitFrameOnAxis_upvr = require(Parent_3.FitFrame).FitFrameOnAxis
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 58
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Alert_upvr (readonly)
		[4]: AlertType_upvr (readonly)
		[5]: FitFrameOnAxis_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 59
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Alert_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: AlertType_upvr (copied, readonly)
			[5]: FitFrameOnAxis_upvr (copied, readonly)
			[6]: ImageSetComponent_upvr (copied, readonly)
		]]
		local module = {
			anchorPoint = arg1.props.anchorPoint;
			alertType = AlertType_upvr.Loading;
			margin = {
				top = 0;
				bottom = 24;
				left = 24;
				right = 24;
			};
			maxWidth = 400;
			minWidth = 272;
			middleContent = arg1.renderMiddleContent;
			onMounted = arg1.props.onMounted;
			position = arg1.props.position;
			screenSize = arg1.props.screenSize;
			title = arg1.props.title;
		}
		local var22
		local function INLINED() -- Internal function, doesn't exist in bytecode
			function var22() -- Line 79
				--[[ Upvalues[5]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameOnAxis_upvr (copied, readonly)
					[3]: ImageSetComponent_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: Theme_upvr (readonly)
				]]
				return Roact_upvr.createElement(FitFrameOnAxis_upvr, {
					BackgroundTransparency = 1;
					contentPadding = UDim.new(0, 8);
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					margin = {
						top = 12;
						bottom = 0;
						left = 0;
						right = 0;
					};
					minimumSize = UDim2.new(1, 0, 0, 0);
				}, {
					Icon = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
						BackgroundTransparency = 1;
						Image = arg1.props.titleIcon;
						ImageColor3 = Theme_upvr.IconEmphasis.Color;
						ImageTransparency = Theme_upvr.IconEmphasis.Transparency;
						Size = UDim2.new(0, 48, 0, 48);
					});
				})
			end
			local Theme_upvr = arg1_2.Theme
			return var22
		end
		if not arg1.props.titleIcon or not INLINED() then
			var22 = nil
		end
		module.titleContent = var22
		return Roact_upvr.createElement(Alert_upvr, module)
	end)
end
return any_extend_result1