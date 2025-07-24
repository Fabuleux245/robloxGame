-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:07
-- Luau version 6, Types version 3
-- Time taken: 0.004618 seconds

local Roact_upvr = require(script.Parent.Parent.Parent.Parent.Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LayerCollectorProvider")
function any_extend_result1.init(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.rootRef = Roact_upvr.createRef()
	arg1.state = {
		absoluteSize = Vector2.new(0, 0);
		insets = {
			top = 0;
			left = 0;
			bottom = 0;
			right = 0;
		};
	}
end
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.watchLayerCollector(arg1, arg2) -- Line 24
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	local AbsoluteSize_upvw_2 = arg2.AbsoluteSize
	local vector2_upvw_3 = Vector2.new(0, 0)
	local vector2_upvw = Vector2.new(0, 0)
	if arg2:IsA("ScreenGui") then
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 30
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			return arg2.IgnoreGuiInset
		end)
		if pcall_result1_2 and pcall_result2 then
			local any_GetGuiInset_result1_2, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
			vector2_upvw_3 = any_GetGuiInset_result1_2
			vector2_upvw = any_GetGuiInset_result2
		end
	end
	arg1:setState({
		absoluteSize = AbsoluteSize_upvw_2;
		insets = {
			top = vector2_upvw_3.Y;
			left = vector2_upvw_3.X;
			bottom = vector2_upvw.Y;
			right = vector2_upvw.X;
		};
	})
	arg1.absoluteSizeConnection = arg2:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 48
		--[[ Upvalues[5]:
			[1]: AbsoluteSize_upvw_2 (read and write)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
			[4]: vector2_upvw_3 (read and write)
			[5]: vector2_upvw (read and write)
		]]
		AbsoluteSize_upvw_2 = arg2.AbsoluteSize
		arg1:setState({
			absoluteSize = AbsoluteSize_upvw_2;
			insets = {
				top = vector2_upvw_3.Y;
				left = vector2_upvw_3.X;
				bottom = vector2_upvw.Y;
				right = vector2_upvw.X;
			};
		})
	end)
end
function any_extend_result1.didMount(arg1) -- Line 64
	local current_upvr = arg1.rootRef.current
	local class_LayerCollector_upvw = current_upvr:FindFirstAncestorWhichIsA("LayerCollector")
	if class_LayerCollector_upvw == nil then
		arg1.ancestryConnection = current_upvr.AncestryChanged:Connect(function() -- Line 69
			--[[ Upvalues[3]:
				[1]: class_LayerCollector_upvw (read and write)
				[2]: current_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			class_LayerCollector_upvw = current_upvr:FindFirstAncestorWhichIsA("LayerCollector")
			if class_LayerCollector_upvw ~= nil then
				arg1.ancestryConnection:Disconnect()
				arg1.ancestryConnection = nil
				arg1:watchLayerCollector(class_LayerCollector_upvw)
			end
		end)
	else
		arg1:watchLayerCollector(class_LayerCollector_upvw)
	end
end
local LayerCollectorContext_upvr = require(script.Parent.LayerCollectorContext)
function any_extend_result1.render(arg1) -- Line 82
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LayerCollectorContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(LayerCollectorContext_upvr.Provider, {
		value = {
			absoluteSize = arg1.state.absoluteSize;
			insets = arg1.state.insets;
		};
	}, {
		LayerCollectorChildRef = Roact_upvr.createElement("Frame", {
			Visible = false;
			[Roact_upvr.Ref] = arg1.rootRef;
		});
		Children = Roact_upvr.createFragment(arg1.props[Roact_upvr.Children]);
	})
end
return any_extend_result1