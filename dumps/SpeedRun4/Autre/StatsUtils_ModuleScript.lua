-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:10
-- Luau version 6, Types version 3
-- Time taken: 0.007238 seconds

local RobloxTranslator_upvr = require(game:GetService("CorePackages").Workspace.Packages.RobloxTranslator)
function LocalizedGetKey(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	local var2_upvw = arg1
	pcall(function() -- Line 21
		--[[ Upvalues[3]:
			[1]: var2_upvw (read and write)
			[2]: RobloxTranslator_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		var2_upvw = RobloxTranslator_upvr:FormatByKey(arg1)
	end)
	return var2_upvw
end
local pcall_result1_2, _ = pcall(function() -- Line 30
	return settings():GetFFlag("UseNotificationsLocalization")
end)
local module_upvr = {
	SelectedBackgroundColor = Color3.new(0.4, 0.4, 0.4);
	FontColor = Color3.new(1, 1, 1);
	GraphBarGreenColor = Color3.new(0.49411764705882355, 0.8274509803921568, 0.12941176470588237);
	GraphBarYellowColor = Color3.new(0.8196078431372549, 0.8274509803921568, 0.12941176470588237);
	GraphBarRedColor = Color3.new(0.8274509803921568, 0.34509803921568627, 0.12941176470588237);
	GraphAverageLineColor = Color3.new(0.8156862745098039, 0.00392156862745098, 0.10588235294117647);
	GraphAverageLineBorderColor = Color3.new(1, 1, 1);
	NormalColor = Color3.fromRGB(31, 31, 31);
	Transparency = 0.5;
	MiniPanelTitleFontSize = Enum.FontSize.Size12;
	MiniPanelValueFontSize = Enum.FontSize.Size10;
	PanelTitleFontSize = Enum.FontSize.Size24;
	PanelValueFontSize = Enum.FontSize.Size14;
	PanelGraphFontSize = Enum.FontSize.Size10;
	ButtonHeight = 36 + require(game:GetService("CoreGui").RobloxGui.Modules.StyleWidgets).TabSelectionHeight;
	ViewerTopMargin = 10;
	ViewerHeight = 144;
	ViewerWidth = 306;
	TextZIndex = 5;
	GraphZIndex = 2;
	GraphTargetLineInnerThickness = 2;
	GraphAverageLineInnerThickness = 2;
	GraphAverageLineBorderThickness = 1;
	GraphAverageLineTotalThickness = module_upvr.GraphAverageLineInnerThickness + 2 * module_upvr.GraphAverageLineBorderThickness;
	TextPanelTitleHeightY = 52;
	TextPanelLegendItemHeightY = 20;
	TextPanelLeftMarginPix = 10;
	TextPanelTopMarginPix = 10;
	DecorationSize = 12;
	OvalKeySize = 8;
	TargetKeyWidth = 11;
	TargetKeyHeight = 2;
	DecorationMargin = 6;
	StatType_Memory = "st_Memory";
	StatType_CPU = "st_CPU";
	StatType_GPU = "st_GPU";
	StatType_NetworkSent = "st_NetworkSent";
	StatType_NetworkReceived = "st_NetworkReceived";
	StatType_Ping = "st_Ping";
	AllStatTypes = {module_upvr.StatType_Memory, module_upvr.StatType_CPU, module_upvr.StatType_GPU, module_upvr.StatType_NetworkSent, module_upvr.StatType_NetworkReceived, module_upvr.StatType_Ping};
	StatNames = {
		[module_upvr.StatType_Memory] = "Memory";
		[module_upvr.StatType_CPU] = "CPU";
		[module_upvr.StatType_GPU] = "GPU";
		[module_upvr.StatType_NetworkSent] = "NetworkSent";
		[module_upvr.StatType_NetworkReceived] = "NetworkReceived";
		[module_upvr.StatType_Ping] = "Ping";
	};
	StatMaxNames = {
		[module_upvr.StatType_Memory] = "MaxMemory";
		[module_upvr.StatType_CPU] = "MaxCPU";
		[module_upvr.StatType_GPU] = "MaxGPU";
		[module_upvr.StatType_NetworkSent] = "MaxNetworkSent";
		[module_upvr.StatType_NetworkReceived] = "MaxNetworkReceived";
		[module_upvr.StatType_Ping] = "MaxPing";
	};
	NumButtonTypes = #module_upvr.AllStatTypes;
	TypeToName = {
		[module_upvr.StatType_Memory] = "Memory";
		[module_upvr.StatType_CPU] = "CPU";
		[module_upvr.StatType_GPU] = "GPU";
		[module_upvr.StatType_NetworkSent] = LocalizedGetKey("Sent")..'\n'..LocalizedGetKey("Network");
		[module_upvr.StatType_NetworkReceived] = LocalizedGetKey("Received")..'\n'..LocalizedGetKey("Network");
		[module_upvr.StatType_Ping] = "Ping";
	};
	TypeToShortName = {
		[module_upvr.StatType_Memory] = "Mem";
		[module_upvr.StatType_CPU] = "CPU";
		[module_upvr.StatType_GPU] = "GPU";
		[module_upvr.StatType_NetworkSent] = "Sent";
		[module_upvr.StatType_NetworkReceived] = "Recv";
		[module_upvr.StatType_Ping] = "Ping";
	};
	MemoryAnalyzerTypeToName = {
		HumanoidTexture = "Humanoid Textures";
		HumanoidTextureOrphan = "Humanoid Textures (Unused)";
		OtherTexture = "Other Textures";
		OtherTextureOrphan = "Other Textures (Unused)";
		CoreScript = "Core Scripts";
		UserScript = "User Scripts";
		Sounds = "Sounds";
		CSG = "Solid Models";
		Meshes = "Meshes";
	};
}
function module_upvr.GetMemoryAnalyzerStatName(arg1) -- Line 158
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.MemoryAnalyzerTypeToName[arg1] == nil then
		return arg1
	end
	return module_upvr.MemoryAnalyzerTypeToName[arg1]
end
function module_upvr.StyleFrame(arg1) -- Line 166
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.BackgroundColor3 = module_upvr.NormalColor
	arg1.BackgroundTransparency = module_upvr.Transparency
end
function module_upvr.StyleButton(arg1) -- Line 171
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.BackgroundColor3 = module_upvr.NormalColor
	arg1.BackgroundTransparency = module_upvr.Transparency
end
function module_upvr.StyleTextWidget(arg1) -- Line 176
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.BackgroundTransparency = 1
	arg1.TextColor3 = module_upvr.FontColor
	arg1.Font = Enum.Font.SourceSansBold
end
function module_upvr.StyleButtonSelected(arg1, arg2) -- Line 182
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.StyleButton(arg1)
	if arg2 then
		arg1.BackgroundColor3 = module_upvr.SelectedBackgroundColor
	end
end
local pcall_result1, pcall_result2 = pcall(function() -- Line 189
	return settings():GetFFlag("UseNotificationsLocalization")
end)
local function _(arg1, arg2) -- Line 191, Named "LocalizedGetString"
	pcall(function() -- Line 192
		--[[ Upvalues[2]:
			[1]: arg2 (read and write)
			[2]: arg1 (readonly)
		]]
		local LocalizationService_3 = game:GetService("LocalizationService")
		arg2 = LocalizationService_3:GetCorescriptLocalizations()[1]:GetString(LocalizationService_3.RobloxLocaleId, arg1)
	end)
	return arg2
end
local var19_upvr = pcall_result1 and pcall_result2
function module_upvr.FormatTypedValue(arg1, arg2) -- Line 201
	--[[ Upvalues[2]:
		[1]: var19_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if var19_upvr then
		if arg2 == module_upvr.StatType_CPU or arg2 == module_upvr.StatType_GPU then
			local formatted_upvw_2 = string.format("%.2f MB", arg1)
			local const_string_upvr = "StatsUtil.ms"
			pcall(function() -- Line 192
				--[[ Upvalues[2]:
					[1]: formatted_upvw_2 (read and write)
					[2]: const_string_upvr (readonly)
				]]
				local LocalizationService_2 = game:GetService("LocalizationService")
				formatted_upvw_2 = LocalizationService_2:GetCorescriptLocalizations()[1]:GetString(LocalizationService_2.RobloxLocaleId, const_string_upvr)
			end)
			return string.gsub(formatted_upvw_2, "{RBX_NUMBER}", string.format("%.2f", arg1))
		end
		if arg2 == module_upvr.StatType_NetworkSent or arg2 == module_upvr.StatType_NetworkReceived then
			local formatted_upvw = string.format("%.2f KB/s", arg1)
			local const_string_upvr_2 = "StatsUtil.KBps"
			pcall(function() -- Line 192
				--[[ Upvalues[2]:
					[1]: formatted_upvw (read and write)
					[2]: const_string_upvr_2 (readonly)
				]]
				local LocalizationService = game:GetService("LocalizationService")
				formatted_upvw = LocalizationService:GetCorescriptLocalizations()[1]:GetString(LocalizationService.RobloxLocaleId, const_string_upvr_2)
			end)
			return string.gsub(formatted_upvw, "{RBX_NUMBER}", string.format("%.2f", arg1))
		end
	end
	if arg2 == module_upvr.StatType_Memory then
		return string.format("%.2f MB", arg1)
	end
	if arg2 == module_upvr.StatType_CPU then
		return string.format("%.2f ms", arg1)
	end
	if arg2 == module_upvr.StatType_GPU then
		return string.format("%.2f ms", arg1)
	end
	if arg2 == module_upvr.StatType_NetworkSent then
		return string.format("%.2f KB/s", arg1)
	end
	if arg2 == module_upvr.StatType_NetworkReceived then
		return string.format("%.2f KB/s", arg1)
	end
	if arg2 == module_upvr.StatType_Ping then
		return string.format("%.2f ms", arg1)
	end
end
function module_upvr.StyleAverageLine(arg1) -- Line 225
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.BackgroundColor3 = module_upvr.GraphAverageLineColor
	arg1.BorderSizePixel = module_upvr.GraphAverageLineBorderThickness
	arg1.BorderColor3 = module_upvr.GraphAverageLineBorderColor
end
function module_upvr.GetColorForValue(arg1, arg2) -- Line 231
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1 < 0.666 * arg2 then
		return module_upvr.GraphBarGreenColor
	end
	if arg1 < 1.333 * arg2 then
		return module_upvr.GraphBarYellowColor
	end
	return module_upvr.GraphBarRedColor
end
local Players_upvr = game:GetService("Players")
local GameSettings_upvr = UserSettings().GameSettings
function module_upvr.PerformanceStatsShouldBeVisible() -- Line 241
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	local PerformanceStatsVisible = GameSettings_upvr.PerformanceStatsVisible
	if PerformanceStatsVisible then
		if Players_upvr.LocalPlayer == nil then
			PerformanceStatsVisible = false
		else
			PerformanceStatsVisible = true
		end
	end
	return PerformanceStatsVisible
end
return module_upvr