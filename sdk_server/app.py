from bottle import route, run, request, Bottle
import json
import base64
from lib.proto import (
    QueryRegionListHttpRsp,
    QueryCurrRegionHttpRsp,
    RegionSimpleInfo,
    RegionInfo,
)

app = Bottle()

ACCOUNT_INFO = {
    "retcode": 0,
    "message": "OK",
    "data": {
        "account": {
            "uid": "69",
            "name": "CockPY",
            "email": "CockPY",
            "mobile": "",
            "is_email_verify": 1,
            "realname": "",
            "identity_card": "",
            "token": "token",
            "safe_mobile": "",
            "facebook_name": "",
            "google_name": "",
            "twitter_name": "",
            "game_center_name": "",
            "apple_name": "",
            "sony_name": "",
            "tap_name": "",
            "country": "US",
            "reactivate_ticket": "",
            "area_code": "US",
            "device_grant_ticket": "",
            "steam_name": "",
        },
        "device_grant_required": False,
        "safe_mobile_required": False,
        "realperson_required": False,
        "realname_operation": "None",
    },
}


@app.route("/query_region_list")
def query_region_list():
    rsp = QueryRegionListHttpRsp()
    rsp.region_list.append(
        RegionSimpleInfo(
            name="Test",
            title="os_euro",
            type="DEV_PUBLIC",
            dispatch_url="http://127.0.0.1:80/query_cur_region",
        )
    )
    rsp.retcode = 0

    rsp.client_config.sdkenv = "2"
    rsp.client_config.showexception = False

    custom_config = {
        "sdkenv": "2",
        "checkdevice": False,
        "loadPatch": False,
        "showexception": False,
        "regionConfig": "pm|fk|add",
        "downloadMode": "0",
        "debugmenu": "true",
        "debuglog": "true"
    }

    rsp.client_custom_config = json.dumps(custom_config)
    rsp.client_secret_key = b""
    rsp.client_custom_config_encrypted = json.dumps(custom_config).encode()

    return base64.b64encode(rsp.SerializeToString()).decode()


@app.route("/query_cur_region")
def query_cur_region():
    rsp = QueryCurrRegionHttpRsp()
    rsp.retcode = 0

    rsp.region_info = RegionInfo()

    rsp.region_info.gateserver_ip = "127.0.0.1"
    rsp.region_info.gateserver_port = 22102

    rsp.client_secret_key = b""
    rsp.region_info.secret_key = b""

    custom_config = {
        "sdkenv": "2",
        "checkdevice": False,
        "loadPatch": False,
        "showexception": False,
        "regionConfig": "pm|fk|add",
        "downloadMode": "0",
        "debugmenu": "true",
        "debuglog": "true"
    }

    rsp.client_config.sdkenv = "2"
    rsp.client_config.showexception = False

    rsp.region_custom_config_encrypted = json.dumps(custom_config).encode()
    rsp.client_region_custom_config_encrypted = json.dumps(custom_config).encode()

    rsp.region_info.resource_url = "http://127.0.0.1:80/client_game_res/client_game_res"
    rsp.region_info.data_url = "http://127.0.0.1:80/client_design_data"

    return base64.b64encode(rsp.SerializeToString()).decode()


@app.route("/mdk/shield/api/login", method="POST")
def route_mdk_shield_api_login():
    return ACCOUNT_INFO


@app.route("/mdk/shield/api/verify", method="POST")
def route_mdk_vertify():
    return ACCOUNT_INFO

@app.route("/mdk/shield/api/loadConfig", method="POST")
def route_mdk_shield_api_loadConfig():
    return {
        "retcode": 0,
        "message": "OK",
        "data": {
            "id": 6,
            "game_key": "hk4e_cn",
            "client": "PC",
            "identity": "I_IDENTITY",
            "guest": True,
            "ignore_versions": "",
            "scene": "S_NORMAL",
            "name": "原神海外",
            "disable_regist": False,
            "enable_email_captcha": False,
            "thirdparty": ["fb", "tw"],
            "disable_mmt": False,
            "server_guest": True,
            "thirdparty_ignore": {"tw": "", "fb": ""},
            "enable_ps_bind_account": False,
            "thirdparty_login_configs": {
                "tw": {"token_type": "TK_GAME_TOKEN", "game_token_expires_in": 604800},
                "fb": {"token_type": "TK_GAME_TOKEN", "game_token_expires_in": 604800},
            },
        },
    }


@app.route(
    "/admin/mi18n/bh3_usa/20190628_5d15ba66cd922/20190628_5d15ba66cd922-version.json",
)
def route_20190628_5d15ba66cd922():
    return {"version": 52}


@app.route("/mdk/shield/api/loginCaptcha", method="POST")
def route_mdk_shield_api_loginCaptcha():
    return {
        "retcode": 0,
        "message": "OK",
        "data": {"protocol": True, "qr_enabled": True, "log_level": "INFO"},
    }


@app.route("/combo/granter/login/login", method="POST")
def route_combo_granter_login_login():
    return {
        "retcode": 0,
        "message": "OK",
        "data": {
            "combo_id": 69,
            "open_id": 69,
            "combo_token": "token",
            "data": '{"guest":true}',
            "heartbeat": False,
            "account_type": 1,
        },
    }


@app.route("/combo/granter/api/getConfig")
def route_combo_granter_api_getConfig():
    return {
        "retcode": 0,
        "message": "OK",
        "data": {
            "protocol": True,
            "qr_enabled": True,
            "log_level": "DEBUG",
            "announce_url": "https://webstatic-sea.hoyoverse.com/hk4e/announcement/index.html?sdk_presentation_style=fullscreen\u0026sdk_screen_transparent=true\u0026game_biz=hk4e_global\u0026auth_appid=announcement\u0026game=hk4e#/",
            "push_alias_type": 2,
            "disable_ysdk_guard": False,
            "enable_announce_pic_popup": True,
        },
    }


@app.route("/combo/granter/api/getProtocol")
def route_combo_granter_api_getProtocol():
    return {
        "retcode": 0,
        "message": "OK",
        "data": {
            "modified": True,
            "protocol": {
                "id": 0,
                "app_id": 4,
                "language": "zh-cn",
                "user_proto": "",
                "priv_proto": "",
                "major": 31,
                "minimum": 0,
                "create_time": "-",
                "teenager_proto": "asd",
                "third_proto": "asd",
            },
        },
    }


@app.route("/log/sdk/upload", method="POST")
def route_log_sdk_upload():
    return ""


@app.route("/pcSdkLogin.html")
def route_pcSdkLogin():
    return ""


@app.route("/client_game_res/:#.*#")
def client_game_res():
    return ""


@app.route("/client_design_data/:#.*#")
def client_design_data():
    return ""


@app.route("/sdk/login")
def login():
    return {
        "retcode": 0,
        "data": {
            "uid": "69",
            "token": "token",
            "email": "CockPY",
        },
    }


def run_http_server(host):
    app.run(host=host, port="80", debug=True)
