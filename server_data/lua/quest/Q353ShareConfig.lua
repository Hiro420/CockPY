-- 任务配置

-- 父任务id

main_id = 353

sub_ids =
{
    --35300,
    35301,
    35302,
    35303,
    35304,
    --35305,
    --35306,
    --35307,
    --35308,
    35309,
    35310,
    35311,
    35312,
}

---存放断线重连生成内容，和questdata配的存档点对应
rewind_data = {}

rewind_data["35301"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353Teach1",
        }
    },
}

rewind_data["35302"] = 
{

}
rewind_data["35303"] = 
{

}
rewind_data["35304"] = 
{
    -- items = {
    --     {
    --         id = 2025,
    --         pos = "Q353Monster3",
    --         alias = "Ball",
    --         scene_id  = 3,
    --         room_id = 0,
	-- 		data_index = 1,
    --     },
    --     {
    --         id = 2025,
    --         pos = "Q353Monster3",
    --         alias = "Ball",
    --         scene_id  = 3,
    --         room_id = 0,
	-- 		data_index = 2,
    --     },
    --     {
    --         id = 2025,
    --         pos = "Q353Monster3",
    --         alias = "Ball",
    --         scene_id  = 3,
    --         room_id = 0,
	-- 		data_index = 3,
    --     },
    -- }

}

--[[ rewind_data["35305"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353Monster3",
        }
    },
}

rewind_data["35307"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353Monster3",
        }
    },
}

rewind_data["35308"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353Monster3",
        }
    },
} ]]
---校验用，和任务lua中生成NPC/monster/gadget/item等对应
quest_data = {}

quest_data["35301"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353Teach1",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    },
    gadgets = {
        {
            id = 70300051,
            pos = "Q357Gaia1",
            alias = "MengdeEff",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        },
    },
}

quest_data["35304"] = 
{
    gadgets = {
        -- {
        --     id = 2025,
        --     pos = "Q353Monster3",
        -- },
        -- {
        --     id = 2025,
        --     pos = "Q353Monster3",
        -- },
        -- {
        --     id = 2025,
        --     pos = "Q353Monster3",
        -- },
    },
    -- items = {
    --     {
    --         id = 2025,
    --         pos = "Q353Monster3",
    --         alias = "Ball",
    --         scene_id  = 3,
    --         room_id = 0,
	-- 		data_index = 1,
    --     },
    --     {
    --         id = 2025,
    --         pos = "Q353Monster3",
    --         alias = "Ball",
    --         scene_id  = 3,
    --         room_id = 0,
	-- 		data_index = 2,
    --     },
    --     {
    --         id = 2025,
    --         pos = "Q353Monster3",
    --         alias = "Ball",
    --         scene_id  = 3,
    --         room_id = 0,
	-- 		data_index = 3,
    --     },
    -- }
}

quest_data["35309"] = 
{
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            pos = "Q353PaimonAfterCs",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        }
    },
}

---对话中生成的怪怎么校验？