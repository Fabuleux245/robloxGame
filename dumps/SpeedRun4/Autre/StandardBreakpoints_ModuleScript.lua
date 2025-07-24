-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:03
-- Luau version 6, Types version 3
-- Time taken: 0.003167 seconds

local tbl_4 = {
	XSmall = "XSmall";
	Small = "Small";
	Medium = "Medium";
	Large = "Large";
	XLarge = "XLarge";
	X2Large = "X2Large";
	Landscape = "Landscape";
	Portrait = "Portrait";
}
local tbl_upvr = {
	[tbl_4.XSmall] = {
		Key = tbl_4.XSmall;
		size = tbl_4.XSmall;
		minWidth = 320;
		maxWidth = 360;
	};
	[tbl_4.Small] = {
		Key = tbl_4.Small;
		size = tbl_4.Small;
		minWidth = 361;
		maxWidth = 600;
	};
	[tbl_4.Medium] = {
		Key = tbl_4.Medium;
		size = tbl_4.Medium;
		minWidth = 601;
		maxWidth = 1140;
	};
	[tbl_4.Large] = {
		Key = tbl_4.Large;
		size = tbl_4.Large;
		minWidth = 1141;
		maxWidth = 1520;
	};
	[tbl_4.XLarge] = {
		Key = tbl_4.XLarge;
		size = tbl_4.XLarge;
		minWidth = 1521;
		maxWidth = 1920;
	};
	[tbl_4.X2Large] = {
		Key = tbl_4.X2Large;
		size = tbl_4.X2Large;
		minWidth = 1920;
		maxWidth = 4096;
	};
}
local tbl_3 = {
	[tbl_4.XSmall] = {
		Key = tbl_4.XSmall;
		size = tbl_4.XSmall;
		maxWidth = 360;
	};
	[tbl_4.Small] = {
		Key = tbl_4.Small;
		size = tbl_4.Small;
		maxWidth = 600;
	};
	[tbl_4.Medium] = {
		Key = tbl_4.Medium;
		size = tbl_4.Medium;
		maxWidth = 1140;
	};
	[tbl_4.Large] = {
		Key = tbl_4.Large;
		size = tbl_4.Large;
		maxWidth = 1520;
	};
	[tbl_4.XLarge] = {
		Key = tbl_4.XLarge;
		size = tbl_4.XLarge;
		maxWidth = 1920;
	};
	[tbl_4.X2Large] = {
		Key = tbl_4.X2Large;
		size = tbl_4.X2Large;
		maxWidth = 4096;
	};
}
local tbl_5_upvr = {
	[tbl_4.XSmall] = {
		Key = tbl_4.XSmall;
		size = tbl_4.XSmall;
		minHeight = 320;
		maxHeight = 360;
	};
	[tbl_4.Small] = {
		Key = tbl_4.Small;
		size = tbl_4.Small;
		minHeight = 361;
		maxHeight = 600;
	};
	[tbl_4.Medium] = {
		Key = tbl_4.Medium;
		size = tbl_4.Medium;
		minHeight = 601;
		maxHeight = 1140;
	};
	[tbl_4.Large] = {
		Key = tbl_4.Large;
		size = tbl_4.Large;
		minHeight = 1141;
		maxHeight = 1520;
	};
	[tbl_4.XLarge] = {
		Key = tbl_4.XLarge;
		size = tbl_4.XLarge;
		minHeight = 1521;
		maxHeight = 1920;
	};
	[tbl_4.X2Large] = {
		Key = tbl_4.X2Large;
		size = tbl_4.X2Large;
		minHeight = 1920;
		maxHeight = 4096;
	};
}
local tbl = {
	[tbl_4.XSmall] = {
		Key = tbl_4.XSmall;
		size = tbl_4.XSmall;
		maxHeight = 360;
	};
	[tbl_4.Small] = {
		Key = tbl_4.Small;
		size = tbl_4.Small;
		maxHeight = 600;
	};
	[tbl_4.Medium] = {
		Key = tbl_4.Medium;
		size = tbl_4.Medium;
		maxHeight = 1140;
	};
	[tbl_4.Large] = {
		Key = tbl_4.Large;
		size = tbl_4.Large;
		maxHeight = 1520;
	};
	[tbl_4.XLarge] = {
		Key = tbl_4.XLarge;
		size = tbl_4.XLarge;
		maxHeight = 1920;
	};
	[tbl_4.X2Large] = {
		Key = tbl_4.X2Large;
		size = tbl_4.X2Large;
		maxHeight = 4096;
	};
}
local tbl_2 = {tbl_3[tbl_4.XSmall], tbl_3[tbl_4.Small], tbl_3[tbl_4.Medium], tbl_3[tbl_4.Large], tbl_3[tbl_4.XLarge], tbl_3[tbl_4.X2Large]}
local tbl_6 = {}
for i, v in tbl_2 do
	tbl_6[v.Key] = i
end
return {
	Enum = tbl_4;
	sizes = tbl_3;
	sizesMinMax = tbl_upvr;
	sizesY = tbl;
	sizesMinMaxY = tbl_5_upvr;
	rules = {
		default = tbl_2;
		Y = {tbl[tbl_4.XSmall], tbl[tbl_4.Small], tbl[tbl_4.Medium], tbl[tbl_4.Large], tbl[tbl_4.XLarge], tbl[tbl_4.X2Large]};
		Orientation = {{
			Key = tbl_4.Landscape;
			minRatio = 1;
		}, {
			Key = tbl_4.Portrait;
			minRatio = 0;
		}};
	};
	keyIndex = tbl_6;
	getMinWidthFor = function(arg1) -- Line 86, Named "getMinWidthFor"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		local var42 = tbl_upvr[arg1]
		if var42 == nil then
			return 0
		end
		return var42.minWidth
	end;
	getMinHeightFor = function(arg1) -- Line 93, Named "getMinHeightFor"
		--[[ Upvalues[1]:
			[1]: tbl_5_upvr (readonly)
		]]
		local var43 = tbl_5_upvr[arg1]
		if var43 == nil then
			return 0
		end
		return var43.minHeight
	end;
}