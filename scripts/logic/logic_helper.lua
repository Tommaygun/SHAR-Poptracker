
ACCESS_NONE = AccessibilityLevel.None
ACCESS_PARTIAL = AccessibilityLevel.Partial
ACCESS_INSPECT = AccessibilityLevel.Inspect
ACCESS_SEQUENCEBREAK = AccessibilityLevel.SequenceBreak
ACCESS_NORMAL = AccessibilityLevel.Normal
ACCESS_CLEARED = AccessibilityLevel.Cleared

CARD_CHECK = {}

local bool_to_accesslvl = {
    [true] = ACCESS_NORMAL,
    [false] = ACCESS_NONE
}

local sc = {
    "36stutzbearcat",
    "70ssportscar",
    "atv",
    "bandit",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "compactcar",
    "curator",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "ghostship",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "moessedan",
    "nerdcar",
    "openwheelracecar",
    "planethype50scar",
    "policecar",
    "sedana",
    "sedanb",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "suv",
    "taxi",
    "witchsbroom",
    "zombiecar"
}

local mc = {
    "bookburningvan",
    "canyonero",
    "donuttruck",
    "fishvan",
    "glasstruck",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "skinnerssedan",
    "surveillancevan",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local lc = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "burnsarmoredtruck",
    "colatruck",
    "cubevan",
    "dufftruck",
    "firetruck",
    "garbagetruck",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "milktruck",
    "minischoolbus",
    "plowking",
    "schoolbus",
    "votequimbytruck"
}

local ac = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "witchsbroom",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local acw = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}
                
function A(result)
    if result then
        return ACCESS_NORMAL
    end
    return ACCESS_NONE
end

function ALL(...)
    local args = { ... }
    local min = ACCESS_NORMAL
    for _, v in ipairs(args) do
        if type(v) == "function" then
            v = v()
        elseif type(v) == "string" then
            v = Has(v)
        end
        if type(v) == "boolean" then
            v = bool_to_accesslvl[v]
        end
        if v < min then
            if v == ACCESS_NONE then
                return ACCESS_NONE
            end
            min = v
        end
    end
    return min
end

function ANY(...)
    local args = { ... }
    local max = ACCESS_NONE
    for _, v in ipairs(args) do
        if type(v) == "function" then
            v = v()
        elseif type(v) == "string" then
            v = Has(v)
        end
        if type(v) == "boolean" then
            v = bool_to_accesslvl[v]
            -- v = A(v)
        end
        if v > max then
            if v == ACCESS_NORMAL then
                return ACCESS_NORMAL
            end
            max = v
        end
    end
    return max
end

function Has(item, amount, amountInLogic)
    local count = Tracker:ProviderCountForCode(item)

    -- print(item, count, amount, amountInLogic)
    if amountInLogic then
        if count >= amountInLogic then
            return ACCESS_NORMAL
        elseif count >= amount then
            return ACCESS_SEQUENCEBREAK
        end
        return ACCESS_NONE
    end
    if not amount then
        if count > 0 then
            return ACCESS_NORMAL
        end
        return ACCESS_NONE
    else
        if count >= amount then
            return ACCESS_SEQUENCEBREAK
        end
        return ACCESS_NONE
    end
end

function locationEnabled(location)
    if CARD_CHECK[location] == true then
        return true
    else
        return false
    end
end

function smallCars()
    for _, cars in ipairs(sc) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function mediumCars()
    for _, cars in ipairs(mc) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function largeCars()
    for _, cars in ipairs(lc) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function anyCar()
    for _, cars in ipairs(ac) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function anyCarWasps()
    for _, cars in ipairs(acw) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end


-- Wasp Bumper Functions
local L1_BDoS = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L1_RC = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L1_BH = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L1_TP1 = {
    "36stutzbearcat",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_CS = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_GBMaC = {
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_MS = {
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "plowking",
    "policecar",
    "schoolbus",
    "skinnerssedan",
    "speedrocket",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local L2_HFY = {
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_THF = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_THB = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_BDKB = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L2_CW = {
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "kremlin",
    "krustyslimo",
    "limo",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local L3_EoKKW = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_MC = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "fishvan",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_DBBKG = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_DB1 = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_DB2 = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_GSFE = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bookburningvan",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_GSNC = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bookburningvan",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_GSS = {
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L3_L = {
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "electaurus",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehiclew/rocket"
}

local L3_B = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "chasesedan",
    "clowncar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "kremlin",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.plow",
    "nonupletsminivan",
    "pickup",
    "pizzavan",
    "plowking",
    "schoolbus",
    "skinnerssedan",
    "speedrocket",
    "tractor",
    "votequimbytruck"
}

local L4_BHBKG1 = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L4_BHBKG2 = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L4_MBS = {
    "36stutzbearcat",
    "70ssportscar",
    "atv",
    "bandit",
    "bonestormtruck",
    "clowncar",
    "coffincar",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "ghostship",
    "hoverbike",
    "knightboat",
    "malibustacycar",
    "moessedan",
    "mr.plow",
    "openwheelracecar",
    "skinnerssedan",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local L4_MBL = {
    "36stutzbearcat",
    "70ssportscar",
    "atv",
    "bandit",
    "bonestormtruck",
    "clowncar",
    "coffincar",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "ghostship",
    "hoverbike",
    "knightboat",
    "malibustacycar",
    "moessedan",
    "mr.plow",
    "openwheelracecar",
    "skinnerssedan",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local L4_ITP = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "atv",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L4_BSS = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hoverbike",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "malibustacycar",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L5_FoH = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "cellphonecar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pizzavan",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehiclew/rocket"
}

local L5_GBMCH = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "zombiecar"
}

local L5_SoTH = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local L5_MS = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "colatruck",
    "cubevan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "milktruck",
    "minischoolbus",
    "minivan",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pizzavan",
    "plowking",
    "schoolbus",
    "sedana",
    "sedanb",
    "suv",
    "taxi",
    "tractor"
}

local L5_PSS = {
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "colatruck",
    "compactcar",
    "cubevan",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "openwheelracecar",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi"
}

local L5_UGPB1 = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L5_UGPB2 = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "familysedan",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "moessedan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L6_M = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "fishvan",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "suv",
    "tractor",
    "wwiivehiclew/rocket"
}

local L6_DBKG = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L6_UDB = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "cellphonecar",
    "colatruck",
    "compactcar",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscarb",
    "stationwagon",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck"
}

local L6_GSC = {
    "36stutzbearcat",
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bookburningvan",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "elcarroloco",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "ghostship",
    "glasstruck",
    "globexsupervillaincar",
    "hallohearse",
    "hearse",
    "honorroller",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "limo",
    "longhorn",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nerdcar",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L6_GSS1 = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bookburningvan",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L6_GSS2 = {
    "70ssportscar",
    "ambulance",
    "armoredtruck",
    "bandit",
    "bookburningvan",
    "canyonero",
    "carbuiltforhomer",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "electaurus",
    "familysedan",
    "ferrini-black",
    "ferrini-red",
    "firetruck",
    "fishvan",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "kremlin",
    "krustyslimo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "wwiivehicle",
    "wwiivehiclew/rocket",
    "zombiecar"
}

local L6_L = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "cellphonecar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "curator",
    "donuttruck",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "hoverbike",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "knightboat",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck"
}

local L7_BHB = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "compactcar",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "electaurus",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "ghostship",
    "glasstruck",
    "hallohearse",
    "hearse",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "kremlin",
    "krustyslimo",
    "limo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "monorailcar",
    "mr.burnslimo",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "planethype50scar",
    "plowking",
    "policecar",
    "schoolbus",
    "sedana",
    "sedanb",
    "skinnerssedan",
    "speedrocket",
    "sportscara",
    "sportscarb",
    "stationwagon",
    "surveillancevan",
    "suv",
    "taxi",
    "tractor",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}

local L7_BB = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "burnsarmoredtruck",
    "canyonero",
    "coffincar",
    "colatruck",
    "cubevan",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hallohearse",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "milktruck",
    "minischoolbus",
    "minivan",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "plowking",
    "schoolbus",
    "votequimbytruck"
}

local L7_PPPl = {
    "ambulance",
    "armoredtruck",
    "bonestormtruck",
    "bookburningvan",
    "burnsarmoredtruck",
    "canyonero",
    "cellphonecar",
    "chasesedan",
    "clowncar",
    "coffincar",
    "colatruck",
    "cubevan",
    "donuttruck",
    "dufftruck",
    "firetruck",
    "fishvan",
    "garbagetruck",
    "glasstruck",
    "hovercar",
    "icecreamtruck",
    "itchyandscratchymovietruck",
    "krustyslimo",
    "milktruck",
    "minischoolbus",
    "minivan",
    "mr.plow",
    "nonupletsminivan",
    "nuclearwastetruck",
    "pickup",
    "pickuptruck",
    "pizzavan",
    "plowking",
    "policecar",
    "schoolbus",
    "skinnerssedan",
    "suv",
    "taxi",
    "votequimbytruck",
    "wwiivehicle",
    "wwiivehiclew/rocket"
}


function l1_schoolBackDoor()
    for _, cars in ipairs(L1_BDoS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l1_rocketCar()
    for _, cars in ipairs(L1_RC) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l1_barnHaystack()
    for _, cars in ipairs(L1_BH) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l1_trailerPark1()
    for _, cars in ipairs(L1_TP1) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_courthouseSteps()
    for _, cars in ipairs(L2_CS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_gazebo()
    for _, cars in ipairs(L2_GBMaC) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_museumSteps()
    for _, cars in ipairs(L2_MS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_hospitalFrontYard()
    for _, cars in ipairs(L2_HFY) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_townHallFront()
    for _, cars in ipairs(L2_THF) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_townHallBack()
    for _, cars in ipairs(L2_THB) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_downtownKrustyBurger()
    for _, cars in ipairs(L2_BDKB) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l2_carWash()
    for _, cars in ipairs(L2_CW) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_wellExit()
    for _, cars in ipairs(L3_EoKKW) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_motelComplex()
    for _, cars in ipairs(L3_MC) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_duffBreweryKrustyGlass()
    for _, cars in ipairs(L3_DBBKG) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_duffBlimp1()
    for _, cars in ipairs(L3_DB1) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_duffBlimp2()
    for _, cars in ipairs(L3_DB2) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_globexShipFrontEnd()
    for _, cars in ipairs(L3_GSFE) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_globexShipCrane()
    for _, cars in ipairs(L3_GSNC) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_globexShipStairs()
    for _, cars in ipairs(L3_GSS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_lighthouse()
    for _, cars in ipairs(L3_L) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l3_beach()
    for _, cars in ipairs(L3_B) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l4_blueHouseKrustyGlass1()
    for _, cars in ipairs(L4_BHBKG1) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l4_blueHouseKrustyGlass2()
    for _, cars in ipairs(L4_BHBKG2) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l4_burnsStairs()
    for _, cars in ipairs(L4_MBS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l4_burnsLibrary()
    for _, cars in ipairs(L4_MBL) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l4_inTrailerPark()
    for _, cars in ipairs(L4_ITP) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l4_behindSchoolSteps()
    for _, cars in ipairs(L4_BSS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_hospitalFront()
    for _, cars in ipairs(L5_FoH) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_gazebo()
    for _, cars in ipairs(L5_GBMCH) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_stepsTownHall()
    for _, cars in ipairs(L5_SoTH) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_museumSteps()
    for _, cars in ipairs(L5_MS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_policeStationSteps()
    for _, cars in ipairs(L5_PSS) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_underGiantPurpleBeams1()
    for _, cars in ipairs(L5_UGPB1) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l5_underGiantPurpleBeams2()
    for _, cars in ipairs(L5_UGPB2) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_motel()
    for _, cars in ipairs(L6_M) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_duffBreweryKrustyGlass()
    for _, cars in ipairs(L6_DBKG) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_underDuffBlimp()
    for _, cars in ipairs(L6_UDB) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_globexShipCrane()
    for _, cars in ipairs(L6_GSC) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_globexShipStairs1()
    for _, cars in ipairs(L6_GSS1) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_globexShipStairs2()
    for _, cars in ipairs(L6_GSS2) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l6_lighthouse()
    for _, cars in ipairs(L6_L) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l7_blueHouseBackyard()
    for _, cars in ipairs(L7_BHB) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l7_bridgeBarricade()
    for _, cars in ipairs(L7_BB) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end

function l7_powerPlantParkingLot()
    for _, cars in ipairs(L7_PPPl) do
        if (Tracker:FindObjectForCode(cars).Active) then
            return true
        end
    end
    return false
end


-- ANy function added here and used in access rules should try to return an Accessibility Level if it is used inside 
-- the ANY() and ALL() functions
--
--