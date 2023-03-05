-- 任务配置

-- 父任务id

main_id = 10400

sub_ids =
{
	1040001,
}

BabaraData = 
{
	BabaraID = 1008,
	Babara = "Babara10400",
} 

rewind_data = {}

quest_data = {}

quest_data["1040001"] = 
{
	npcs = 
	{
		{
			alias = "Babara10400",
			script = "Actor/Quest/Q413/Barbara",
			id = 1008,
			pos = "Q10400Babara1",
			sceneID = 3,
			roomID = 0,
			subIndex = 0,
		}
    }
}
