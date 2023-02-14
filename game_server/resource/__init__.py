from game_server.resource.excel import ExcelOutput
from game_server.resource.binoutput import BinOutput
import dataclasses
from os import path
from loguru import logger

class ResourceManager:
    def __init__(self, dir: str):
        if path.exists(dir):
            self.excels = ExcelOutput.load_all_excels(dir)
            self.binoutput = BinOutput.load_all_bins(dir)
        else:
            logger.opt(colors=True).debug(f'Resources directory <red>does not exist</red>, running with <yellow>minimal resources</yellow>')
            
resources: ResourceManager = ResourceManager("server_data")