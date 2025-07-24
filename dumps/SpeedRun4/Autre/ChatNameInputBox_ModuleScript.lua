-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:13
-- Luau version 6, Types version 3
-- Time taken: 0.001027 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatNameInputBox")
any_extend_result1.defaultProps = {
	initialInputText = "";
	placeholderText = "(PLACEHOLDER) Name your chat group";
}
local UIBlox_upvr = require(Parent.UIBlox)
local InputBoxWithCharacterCounter_upvr = require(AppChat.SocialLibraries).Components.InputBoxWithCharacterCounter
function any_extend_result1.render(arg1) -- Line 18
	--[[ Upvalues[3]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InputBoxWithCharacterCounter_upvr (readonly)
	]]
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 19
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: InputBoxWithCharacterCounter_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module = {}
		local tbl = {
			initialInputText = arg1.props.initialInputText;
			validInputTextColor3 = Color3.fromRGB(117, 117, 117);
			validInputTextTransparency = 0;
			invalidInputTextColor3 = Color3.fromRGB(226, 35, 26);
			invalidInputTextTransparency = 0;
			inputTextFont = Enum.Font.Gotham;
			inputTextColor3 = Color3.fromRGB(25, 25, 25);
			inputTextSize = 23;
			inputTextTransparency = 0;
			placeholderTextTransparency = 0;
			placeholderTextColor3 = Color3.fromRGB(184, 184, 184);
			placeholderText = arg1.props.placeholderText;
			clearIconColor3 = Color3.fromRGB(255, 255, 255);
			clearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-clear-solid.png";
			characterLimit = 150;
		}
		tbl.style = arg1_2
		module.InputBox = Roact_upvr.createElement(InputBoxWithCharacterCounter_upvr, tbl)
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 64);
			BackgroundTransparency = 1;
		}, module)
	end)
end
return any_extend_result1