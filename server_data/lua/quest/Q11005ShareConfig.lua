-- 任务配置

-- 父任务id

main_id = 11005

sub_ids =
{
	1100501,
    1100502,
    1100503,
    1100504,
    1100505,
    1100506,
    1100507,
    1100508,
    1100509,
    1100510,
    1100511,
    1100512,
    1100513,
    1100514,
    1100515,
    1100516,
    1100517,
    1100518,
    1100519,
}

XianglingData = 
{
	ID = 1012,
	Alias = "Xiangling",
}

PaimonData = 
{
	ID = 1005,
	Alias = "Paimon",
}

DraffData = 
{
	ID = 153701,
	Alias = "Npc153701",
}

BrookData = 
{
	ID = 154101,
	Alias = "Npc154101",
}

OlafData = 
{
	ID = 163001,
	Alias = "Npc163001",
}

QGData = 
{
	ID = 163101,
	Alias = "Npc163101",
}

rewind_data = {}

rewind_data["1100515"] =
{

    npcs = {
        {
            id = 153701,
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100503Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    },

}

rewind_data["1100516"] =
{

    npcs = {
        {
            id = 153701,
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100503Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    },


}

rewind_data["1100517"] =
{

    npcs = {
        {
            id = 153701,
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100503Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    },


}

rewind_data["1100518"] =
{

    npcs = {
        {
            id = 153701,
            alias = "Draff",
            script = "Actor/Npc/TempNPC",
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },

        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100506Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    },


}



quest_data = {}

quest_data["1100501"] = 
{
	npcs = 
	{
		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100501XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100501Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {      
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            id = 153701,
            pos = "Q1100501Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["1100502"] = 
{
	npcs = 
	{
		{
			alias = "Npc154101",
			script = "Actor/Npc/TempNPC",
			id = 154101,
			pos = "Q1100502Brook",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100502XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100502Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {      
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            id = 153701,
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },

        {      
            alias = "Npc163101",
            script = "Actor/Npc/TempNPC",
            id = 163101,
            pos = "Q1100502QG",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["1100503"] = 
{
	npcs = 
	{
		{
			alias = "Npc154101",
			script = "Actor/Npc/TempNPC",
			id = 154101,
			pos = "Q1100503Brook",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100503XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
			alias = "Npc163001",
			script = "Actor/Npc/TempNPC",
			id = 163001,
			pos = "Q1100503Olaf",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        {
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            id = 153701,
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },

        {      
            alias = "Npc163101",
            script = "Actor/Npc/TempNPC",
            id = 163101,
            pos = "Q1100503QG",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}


quest_data["1100506"] = 
{
	gadgets =
	{
		{
			id = 70710030,
			pos = "Q1100506Wash",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Wash", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		}
	}
}

quest_data["1100509"] = 
{
	gadgets =
	{
		{
			id = 70710031,
			pos = "Q1100509Burn1",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Fire1", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},

		{
			id = 70710032,
			pos = "Q1100509Burn2",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Fire2", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},

		{
			id = 70710033,
			pos = "Q1100509Burn3",-- 使用SpawnGadgeWithPos时可不配，使用SpawnGadge必须配
			alias = "Fire3", -- optional default : ""
			scene_id = 3, -- optional default : sceneData.DefaultSceneID
		},
	}
}

quest_data["1100515"] = 
{
	npcs = 
	{
		{
			alias = "Npc154101",
			script = "Actor/Npc/TempNPC",
			id = 154101,
			pos = "Q1100503Brook",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100503XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        
        {      
            alias = "Npc163101",
            script = "Actor/Npc/TempNPC",
            id = 163101,
            pos = "Q1100503QG",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["1100516"] = 
{
	npcs = 
	{
		{
			alias = "Npc154101",
			script = "Actor/Npc/TempNPC",
			id = 154101,
			pos = "Q1100503Brook",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100503XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        --需要补充olaf的布置
        -- {
		-- 	alias = "Npc163001",
		-- 	script = "Actor/Npc/TempNPC",
		-- 	id = 163001,
		-- 	pos = "Q1100501Olaf",
		-- 	scene_id = 3,
		-- 	room_id = 0,
		-- 	data_index = 0,
        -- },
        
        {      
            alias = "Npc163101",
            script = "Actor/Npc/TempNPC",
            id = 163101,
            pos = "Q1100503QG",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["1100517"] = 
{
	npcs = 
	{
		{
			alias = "Npc154101",
			script = "Actor/Npc/TempNPC",
			id = 154101,
			pos = "Q1100503Brook",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100503XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
        
        
        {      
            alias = "Npc163101",
            script = "Actor/Npc/TempNPC",
            id = 163101,
            pos = "Q1100503QG",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["1100518"] = 
{
	npcs = 
	{
		{
			alias = "Npc154101",
			script = "Actor/Npc/TempNPC",
			id = 154101,
			pos = "Q1100502Brook",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100506XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },

        {
        	alias = "Npc163001",
        	script = "Actor/Npc/TempNPC",
        	id = 163001,
        	pos = "Q1100506Olaf",
        	scene_id = 3,
        	room_id = 0,
        	data_index = 0,
        },

        {
            alias = "Npc153701",
            script = "Actor/Npc/TempNPC",
            id = 153701,
            pos = "Q1100503Draff",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
        
        {      
            alias = "Npc163101",
            script = "Actor/Npc/TempNPC",
            id = 163101,
            pos = "Q1100502QG",
            scene_id  = 3,
            room_id = 0,
			data_index = 0,
        },
    }
}

quest_data["1100519"] = 
{
	npcs = 
	{
		{
			alias = "Xiangling",
			script = "Actor/Npc/TempNPC",
			id = 1012,
			pos = "Q1100507XL",
			scene_id = 3,
			room_id = 0,
			data_index = 0,
        },
    }
}