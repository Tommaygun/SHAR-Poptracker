SLOT_CODES = {
    shufflecards = {
        code = "card_setting",
        type = "progressive",
        mapping = {
            [0] = 0, -- false
            [1] = 1 -- true
        }
    },
    goal = {
        code = "goal_setting",
        type = "progressive",
        mapping = {
            [0] = 0, -- all missions
            [1] = 1, -- all story missions
            [2] = 2, -- final mission
            [3] = 3, -- wasps and cards
        }
    }
}