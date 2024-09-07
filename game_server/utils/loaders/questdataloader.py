import json
import os
from lib.proto import *

quest_excel_file_name = "QuestExcelConfigData.json"

quest_data = json.load(open(os.path.join(os.getcwd(), "game_server", "json", "excel", quest_excel_file_name)))

def get_quest_ids():
    return [int(quest["mainId"]) for quest in quest_data]

async def get_blacklist_map():
    retlist = {}
    for quest in quest_data:
        finishExec = quest["finishExec"]
        beginExec = quest["beginExec"]
        blist = process_execs(finishExec, beginExec)
        for sceneid, groupids in blist.items():
            if not sceneid in retlist:
                retlist[sceneid] = groupids
            else:
                retlist[sceneid].extend(groupids)
    return retlist

def process_execs(finishExec, beginExec):
    retlist = {}
    if finishExec:
        for exec in finishExec:
            if not "type" in exec or exec["type"] != "QUEST_EXEC_NOTIFY_GROUP_LUA":
                continue
            param = exec["param"]
            sceneid = param[0]
            groupid = param[1]
            if not sceneid in retlist:
                retlist[sceneid] = [groupid]
            else:
                retlist[sceneid].append(groupid)
    if beginExec:
        for exec in beginExec:
            if not "type" in exec or exec["type"] != "QUEST_EXEC_NOTIFY_GROUP_LUA":
                continue
            param = exec["param"]
            sceneid = param[0]
            groupid = param[1]
            if not sceneid in retlist:
                retlist[sceneid] = [groupid]
            else:
                retlist[sceneid].append(groupid)
    return retlist
    