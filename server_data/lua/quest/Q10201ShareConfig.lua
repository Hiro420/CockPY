-- 任务配置

-- 父任务id

main_id = 10201

sub_ids =
{
    1020101,
    1020102,
    1020103,
    1020104,
    1020105,
    1020106,
    1020107,
    1020108,
    1020109,
    1020110,
    1020111,
}

rewind_data = {}


quest_data = {}
quest_data["1020103"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["1020114"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn2",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["1020104"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssRoute3",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["1020115"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn3",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["1020106"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssRoute6",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["1020107"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn4",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}


quest_data["1020108"] = 
{
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn4",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}


quest_data["1020112"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn1",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    },
    
    gadgets ={
        {
            id = 70300117,
            pos = "Q10201BombSpawn",
            alias = "Q10201Bomb",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id =- 0
        }
    }
}

quest_data["1020113"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn2",
            scene_id  = 3,
            room_id = 0,
			data_index = 1,
        }
    }
}

quest_data["1020111"] = 
{
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id  = 20031,
            room_id = 1,
			data_index = 1,
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id  = 20031,
            room_id = 1,
			data_index = 2,
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id  = 20031,
            room_id = 1,
			data_index = 3,
        }
    },
    
    gadgets ={
        {
            id = 70300117,
            pos = "Q10201BombSpawn",
            alias = "Q10201Bomb",
            scene_id = 20031,
            room_id = 1,
            is_show_cutscene = false,
            chest_drop_id =- 0
        }
    }
}    
