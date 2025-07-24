-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:28
-- Luau version 6, Types version 3
-- Time taken: 0.003245 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local any_extend_result1 = React_upvr.PureComponent:extend("DebugCanvas")
local GetFFlagReportAnythingDebugCanvas_upvr = require(script.Parent.Parent.Flags.GetFFlagReportAnythingDebugCanvas)
function any_extend_result1.render(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: GetFFlagReportAnythingDebugCanvas_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not GetFFlagReportAnythingDebugCanvas_upvr() or not arg1.props.identifiedAvatars then
		return React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(0, 0);
		})
	end
	local tbl = {}
	for _, v in pairs(arg1.props.identifiedAvatars) do
		local boundingBox = v.boundingBox
		tbl[#tbl + 1] = React_upvr.createElement("Frame", {
			Position = UDim2.fromScale(boundingBox.min.X, boundingBox.min.Y);
			Size = UDim2.fromScale(boundingBox.max.X - boundingBox.min.X, boundingBox.max.Y - boundingBox.min.Y);
			BackgroundTransparency = 0.8;
			BackgroundColor3 = Color3.fromRGB(20, 0, 255 * v.hitRate);
		})
		local len = #v.convexHull
		for i_2, v_2 in v.convexHull do
			tbl[#tbl + 1] = React_upvr.createElement("Frame", {
				Position = UDim2.new(v_2.X, -2, v_2.Y, -2);
				Size = UDim2.fromOffset(4, 4);
				BackgroundTransparency = 0.2;
				BackgroundColor3 = Color3.fromHSV(i_2 / len, 1, 0.65);
			})
			local var55
		end
	end
	for _, v_3 in pairs(arg1.props.identifiedAds) do
		local boundingBox_2 = v_3.boundingBox
		var55[#var55 + 1] = React_upvr.createElement("Frame", {
			Position = UDim2.fromScale(boundingBox_2.min.X, boundingBox_2.min.Y);
			Size = UDim2.fromScale(boundingBox_2.max.X - boundingBox_2.min.X, boundingBox_2.max.Y - boundingBox_2.min.Y);
			BackgroundTransparency = 0.8;
			BackgroundColor3 = Color3.fromRGB(20, 0, 255);
		})
		for _, v_4 in v_3.visibleRegions do
			local len_2 = #v_4.convexHull
			for i_5, v_5 in v_4.convexHull do
				var55[#var55 + 1] = React_upvr.createElement("Frame", {
					Position = UDim2.new(v_5.X, -2, v_5.Y, -2);
					Size = UDim2.fromOffset(4, 4);
					BackgroundTransparency = 0.2;
					BackgroundColor3 = Color3.fromHSV(i_5 / len_2, 1, 0.65);
				})
				local var63
			end
		end
	end
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 0.9;
		Size = UDim2.fromScale(1, 1);
		ZIndex = arg1.props.ZIndex;
	}, var63)
end
return any_extend_result1