local module = {}
local count = 0
local con = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog

local colorMap = {
        aliceblue = Color3.fromRGB(240, 248, 255),
        antiquewhite = Color3.fromRGB(250, 235, 215),
        aqua = Color3.fromRGB(0, 255, 255),
        aquamarine = Color3.fromRGB(127, 255, 212),
        azure = Color3.fromRGB(240, 255, 255),
        beige = Color3.fromRGB(245, 245, 220),
        bisque = Color3.fromRGB(255, 228, 196),
        black = Color3.fromRGB(0, 0, 0),
        blanchedalmond = Color3.fromRGB(255, 235, 205),
        blue = Color3.fromRGB(0, 0, 255),
        blueviolet = Color3.fromRGB(138, 43, 226),
        brown = Color3.fromRGB(165, 42, 42),
        burlywood = Color3.fromRGB(222, 184, 135),
        cadetblue = Color3.fromRGB(95, 158, 160),
        chartreuse = Color3.fromRGB(127, 255, 0),
        chocolate = Color3.fromRGB(210, 105, 30),
        coral = Color3.fromRGB(255, 127, 80),
        cornflowerblue = Color3.fromRGB(100, 149, 237),
        cornsilk = Color3.fromRGB(255, 248, 220),
        crimson = Color3.fromRGB(220, 20, 60),
        cyan = Color3.fromRGB(0, 255, 255),
        darkblue = Color3.fromRGB(0, 0, 139),
        darkcyan = Color3.fromRGB(0, 139, 139),
        darkgoldenrod = Color3.fromRGB(184, 134, 11),
        darkgray = Color3.fromRGB(169, 169, 169),
        darkgreen = Color3.fromRGB(0, 100, 0),
        darkgrey = Color3.fromRGB(169, 169, 169),
        darkkhaki = Color3.fromRGB(189, 183, 107),
        darkmagenta = Color3.fromRGB(139, 0, 139),
        darkolivegreen = Color3.fromRGB(85, 107, 47),
        darkorange = Color3.fromRGB(255, 140, 0),
        darkorchid = Color3.fromRGB(153, 50, 204),
        darkred = Color3.fromRGB(139, 0, 0),
        darksalmon = Color3.fromRGB(233, 150, 122),
        darkseagreen = Color3.fromRGB(143, 188, 143),
        darkslateblue = Color3.fromRGB(72, 61, 139),
        darkslategray = Color3.fromRGB(47, 79, 79),
        darkslategrey = Color3.fromRGB(47, 79, 79),
        darkturquoise = Color3.fromRGB(0, 206, 209),
        darkviolet = Color3.fromRGB(148, 0, 211),
        deeppink = Color3.fromRGB(255, 20, 147),
        deepskyblue = Color3.fromRGB(0, 191, 255),
        dimgray = Color3.fromRGB(105, 105, 105),
        dimgrey = Color3.fromRGB(105, 105, 105),
        dodgerblue = Color3.fromRGB(30, 144, 255),
        firebrick = Color3.fromRGB(178, 34, 34),
        floralwhite = Color3.fromRGB(255, 250, 240),
        forestgreen = Color3.fromRGB(34, 139, 34),
        fuchsia = Color3.fromRGB(255, 0, 255),
        gainsboro = Color3.fromRGB(220, 220, 220),
        ghostwhite = Color3.fromRGB(248, 248, 255),
        gold = Color3.fromRGB(255, 215, 0),
        goldenrod = Color3.fromRGB(218, 165, 32),
        gray = Color3.fromRGB(128, 128, 128),
        green = Color3.fromRGB(0, 128, 0),
        greenyellow = Color3.fromRGB(173, 255, 47),
        grey = Color3.fromRGB(128, 128, 128),
        honeydew = Color3.fromRGB(240, 255, 240),
        hotpink = Color3.fromRGB(255, 105, 180),
        indianred = Color3.fromRGB(205, 92, 92),
        indigo = Color3.fromRGB(75, 0, 130),
        ivory = Color3.fromRGB(255, 255, 240),
        khaki = Color3.fromRGB(240, 230, 140),
        lavender = Color3.fromRGB(230, 230, 250),
        lavenderblush = Color3.fromRGB(255, 240, 245),
        lawngreen = Color3.fromRGB(124, 252, 0),
        lemonchiffon = Color3.fromRGB(255, 250, 205),
        lightblue = Color3.fromRGB(173, 216, 230),
        lightcoral = Color3.fromRGB(240, 128, 128),
        lightcyan = Color3.fromRGB(224, 255, 255),
        lightgoldenrodyellow = Color3.fromRGB(250, 250, 210),
        lightgray = Color3.fromRGB(211, 211, 211),
        lightgreen = Color3.fromRGB(144, 238, 144),
        lightgrey = Color3.fromRGB(211, 211, 211),
        lightpink = Color3.fromRGB(255, 182, 193),
        lightsalmon = Color3.fromRGB(255, 160, 122),
        lightseagreen = Color3.fromRGB(32, 178, 170),
        lightskyblue = Color3.fromRGB(135, 206, 250),
        lightslategray = Color3.fromRGB(119, 136, 153),
        lightslategrey = Color3.fromRGB(119, 136, 153),
        lightsteelblue = Color3.fromRGB(176, 196, 222),
        lightyellow = Color3.fromRGB(255, 255, 224),
        lime = Color3.fromRGB(0, 255, 0),
        limegreen = Color3.fromRGB(50, 205, 50),
        linen = Color3.fromRGB(250, 240, 230),
        magenta = Color3.fromRGB(255, 0, 255),
        maroon = Color3.fromRGB(128, 0, 0),
        mediumaquamarine = Color3.fromRGB(102, 205, 170),
        mediumblue = Color3.fromRGB(0, 0, 205),
        mediumorchid = Color3.fromRGB(186, 85, 211),
        mediumpurple = Color3.fromRGB(147, 112, 219),
        mediumseagreen = Color3.fromRGB(60, 179, 113),
        mediumslateblue = Color3.fromRGB(123, 104, 238),
        mediumspringgreen = Color3.fromRGB(0, 250, 154),
        mediumturquoise = Color3.fromRGB(72, 209, 204),
        mediumvioletred = Color3.fromRGB(199, 21, 133),
        midnightblue = Color3.fromRGB(25, 25, 112),
        mintcream = Color3.fromRGB(245, 255, 250),
        mistyrose = Color3.fromRGB(255, 228, 225),
        moccasin = Color3.fromRGB(255, 228, 181),
        navajowhite = Color3.fromRGB(255, 222, 173),
        navy = Color3.fromRGB(0, 0, 128),
        oldlace = Color3.fromRGB(253, 245, 230),
        olive = Color3.fromRGB(128, 128, 0),
        olivedrab = Color3.fromRGB(107, 142, 35),
        orange = Color3.fromRGB(255, 165, 0),
        orangered = Color3.fromRGB(255, 69, 0),
        orchid = Color3.fromRGB(218, 112, 214),
        palegoldenrod = Color3.fromRGB(238, 232, 170),
        palegreen = Color3.fromRGB(152, 251, 152),
        paleturquoise = Color3.fromRGB(175, 238, 238),
        palevioletred = Color3.fromRGB(219, 112, 147),
        papayawhip = Color3.fromRGB(255, 239, 213),
        peachpuff = Color3.fromRGB(255, 218, 185),
        peru = Color3.fromRGB(205, 133, 63),
        pink = Color3.fromRGB(255, 192, 203),
        plum = Color3.fromRGB(221, 160, 221),
        powderblue = Color3.fromRGB(176, 224, 230),
        purple = Color3.fromRGB(128, 0, 128),
        red = Color3.fromRGB(255, 0, 0),
        rosybrown = Color3.fromRGB(188, 143, 143),
        royalblue = Color3.fromRGB(65, 105, 225),
        saddlebrown = Color3.fromRGB(139, 69, 19),
        salmon = Color3.fromRGB(250, 128, 114),
        sandybrown = Color3.fromRGB(244, 164, 96),
        seagreen = Color3.fromRGB(46, 139, 87),
        seashell = Color3.fromRGB(255, 245, 238),
        sienna = Color3.fromRGB(160, 82, 45),
        silver = Color3.fromRGB(192, 192, 192),
        skyblue = Color3.fromRGB(135, 206, 235),
        slateblue = Color3.fromRGB(106, 90, 205),
        slategray = Color3.fromRGB(112, 128, 144),
        slategrey = Color3.fromRGB(112, 128, 144),
        snow = Color3.fromRGB(255, 250, 250),
        springgreen = Color3.fromRGB(0, 255, 127),
        steelblue = Color3.fromRGB(70, 130, 180),
        tan = Color3.fromRGB(210, 180, 140),
        teal = Color3.fromRGB(0, 128, 128),
        thistle = Color3.fromRGB(216, 191, 216),
        tomato = Color3.fromRGB(255, 99, 71),
        turquoise = Color3.fromRGB(64, 224, 208),
        violet = Color3.fromRGB(238, 130, 238),
        wheat = Color3.fromRGB(245, 222, 179),
        white = Color3.fromRGB(255, 255, 255),
        whitesmoke = Color3.fromRGB(245, 245, 245),
        yellow = Color3.fromRGB(255, 255, 0),
        yellowgreen = Color3.fromRGB(154, 205, 50),
    }


con.ChildAdded:Connect(function(child)
	if tonumber(child.Name) ~= nil then
		count = tonumber(child.Name)
	end
end)

local function RGB(colorString)
    -- Define a table that maps color names to RGB values


    -- Convert the color string to lowercase for case-insensitive matching
    local lowerColorString = colorString:lower()

    -- Check if the color exists in the color map
    if colorMap[lowerColorString] then
        return colorMap[lowerColorString]
    else
        -- Return white if the color is not found
        return colorString
    end
end
    

function module.printc(string, img, color, timestamp)
	local s, r = pcall(function()
	if img == nil or img == "" then
		img = ""
	else
		img = image(img)
	end
	if timestamp == nil then
		timestamp = true
	end
	if color == nil then 
		color = Color3.fromRGB(255, 255, 255)
	end
	if type(color) == "string" then
		color = RGB(color)
	end
	if typeof(color) ~= "Color3" then
		error("Invalid color! "..color.." is not a valid color.")
	end
	if string == nil then
		error("string is a required argument.")
		return
	end
	print(string)
	wait()
	wait()
	local path = con[tostring(count)]
	path.msg.TextColor3 = color
	if timestamp == true then
		path.msg.Text = os.date("%H:%M:%S").." -- "..tostring(string)
	else
		path.msg.Text = tostring(string)
	end
	path.image.Image = img
	path.Name = "Modded"
	end)
	if not s then
		if not string.find(r, "0") then
			warn(r)
		else
			warn("Could not modify console, make sure you have the console open and scrolled down ~ Color modifier")
		end
	end
end

function module.colors()
    for key, c in pairs(colorMap) do
        printc(key, nil, c, false)
    end
end

function mpdule.image(link)
	writefile("ConsoleMod.tmp", game:HttpGet(link))
	return getcustomasset("ConsoleMod.tmp")
end
