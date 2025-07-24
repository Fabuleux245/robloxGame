-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:00
-- Luau version 6, Types version 3
-- Time taken: 0.001569 seconds

local Constants = require(script.Parent.Parent.Constants)
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local MainWindow_upvr = Constants.DefaultFontSize.MainWindow
local Text_upvr = Constants.Color.Text
local MainWindowBold_upvr = Constants.Font.MainWindowBold
local MainWindow_upvr_2 = Constants.Font.MainWindow
return function(arg1) -- Line 21, Named "CellLabel"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: MainWindow_upvr (readonly)
		[3]: Text_upvr (readonly)
		[4]: MainWindowBold_upvr (readonly)
		[5]: MainWindow_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if arg1.textWrapped ~= nil then
		var7 = arg1.textWrapped
	else
		var7 = true
	end
	if arg1.textTruncate ~= nil then
	else
	end
	local module = {
		Text = arg1.text;
		TextSize = MainWindow_upvr;
		TextColor3 = Text_upvr;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextWrapped = var7;
		TextTruncate = nil;
	}
	if not arg1.bold or not MainWindowBold_upvr then
	end
	module.Font = MainWindow_upvr_2
	module.Size = arg1.size
	module.Position = arg1.pos
	module.BackgroundTransparency = 1
	module.LayoutOrder = arg1.layoutOrder
	module.RichText = arg1.richText
	return Roact_upvr.createElement("TextLabel", module)
end