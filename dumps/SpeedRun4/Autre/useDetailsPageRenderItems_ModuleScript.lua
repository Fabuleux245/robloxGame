-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:08
-- Luau version 6, Types version 3
-- Time taken: 0.002311 seconds

local React_upvr = require(script:FindFirstAncestor("AppBlox").Parent.React)
return function(arg1, arg2, arg3, arg4) -- Line 9, Named "useDetailsPageRenderItems"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 15
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module_2 = {}
		for i, v in arg1 do
			table.insert(module_2, {
				index = v.portraitLayoutOrder + 1;
				renderComponent = v.renderComponent;
				showCornerGradient = v.showCornerGradient;
				useSelectionBumper = v.useSelectionBumper;
				key = i;
			})
		end
		table.sort(module_2, function(arg1_2, arg2_2) -- Line 27
			local var10
			if not var10 then
				var10 = true
				return var10
			end
			var10 = arg1_2.index
			if not var10 then
				var10 = false
				return var10
			end
			if arg1_2.index > arg2_2.index then
				var10 = false
			else
				var10 = true
			end
			return var10
		end)
		return module_2
	end, tbl)
	local module = {any_useMemo_result1_upvr}
	module[2] = arg2
	module[3] = arg3.Y
	module[4] = arg4.Y
	return React_upvr.useMemo(function() -- Line 40
		--[[ Upvalues[5]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: arg2 (readonly)
		]]
		local clone = table.clone(any_useMemo_result1_upvr)
		table.insert(clone, 1, {
			index = 1;
			key = "Header";
			showCornerGradient = true;
			renderComponent = function() -- Line 47, Named "renderComponent"
				--[[ Upvalues[4]:
					[1]: React_upvr (copied, readonly)
					[2]: arg3 (copied, readonly)
					[3]: arg4 (copied, readonly)
					[4]: arg2 (copied, readonly)
				]]
				local module_3 = {
					Layout = React_upvr.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Bottom;
					});
				}
				module_3.HeaderContainer = arg2
				return React_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, arg3.Y - arg4.Y * 2);
					BackgroundTransparency = 1;
				}, module_3)
			end;
		})
		return clone
	end, module)
end