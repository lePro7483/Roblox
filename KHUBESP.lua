-- Made by StarLagging, also named lePro7483 before banned for scamming :D
-- I use Sirius ESP Lib by shlex, you can find it here : https://github.com/shlexware/Sirius/blob/request/library/esp/documentation.md
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()

espLib.whitelist = {"nil"} -- Player ESP color to whitelistColor in options
espLib.blacklist = {"nil2"} -- Removes player from ESP



espLib.options = {
    enabled = true,
    scaleFactorX = 4,
    scaleFactorY = 5,
    font = 2,
    fontSize = 13,
    limitDistance = false,
    maxDistance = 1000,
    visibleOnly = false,
    teamCheck = false,
    teamColor = true,
    fillColor = nil,
    whitelistColor = Color3.new(0, 1, 0),
    outOfViewArrows = true,
    outOfViewArrowsFilled = true,
    outOfViewArrowsSize = 12.5,
    outOfViewArrowsRadius = 100,
    outOfViewArrowsColor = Color3.new(1, 1, 1),
    outOfViewArrowsTransparency = 0.4,
    outOfViewArrowsOutline = true,
    outOfViewArrowsOutlineFilled = false,
    outOfViewArrowsOutlineColor = Color3.new(1, 1, 1),
    outOfViewArrowsOutlineTransparency = 1,
    names = true,
    nameTransparency = 1,
    nameColor = Color3.new(1, 1, 1),
    boxes = true,
    boxesTransparency = 0,
    boxesColor = Color3.new(1, 1, 1),
    boxFill = true,
    boxFillTransparency = 0.4,
    boxFillColor = Color3.new(1, 1, 1),
    healthBars = true,
    healthBarsSize = 1,
    healthBarsTransparency = 0,
    healthBarsColor = Color3.new(0, 1, 0),
    healthText = true,
    healthTextTransparency = 0,
    healthTextSuffix = "%",
    healthTextColor = Color3.new(1, 1, 1),
    distance = true,
    distanceTransparency = 1,
    distanceSuffix = " Studs",
    distanceColor = Color3.new(1, 1, 1),
    tracers = true,
    tracerTransparency = 0.5,
    tracerColor = Color3.new(1, 1, 1),
    tracerOrigin = "Mouse", -- Available [Mouse, Top, Bottom]
    chams = true,
    chamsColor = Color3.new(1, 0, 0),
    chamsTransparency = 0.5,
}

espLib.Init()
