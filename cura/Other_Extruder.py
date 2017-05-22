from ..Script import Script
class Other_Extruder(Script):
    def __init__(self):
        super().__init__()

    def getSettingDataString(self):
        return """{
            "name":"Change extruder T0 or T1",
            "key": "Other_Extruder",
            "metadata":{},
            "version": 2,
            "settings":
            {
                "my_extruder":
                {
                    "label": "Wich Extruder (0,1)",
                    "description": "Which exctruder to use ?",
                    "unit": "",
                    "type": "int",
                    "default_value": 0
                }
            }
        }"""

    def execute(self, data):
        x = 0.
        y = 0.
        for layer in data: 
            lines = layer.split("\n")
            for line in lines:
                index = data.index(layer)
                my_ext = str(self.getSettingValueByKey("my_extruder"))
                data[index] = layer.replace("M109", "M109 T%s" % my_ext).replace("M104", "M104 T%s"%my_ext).replace("; -- START GCODE --","T%s\n; -- START GCODE --"%my_ext)
        return data
