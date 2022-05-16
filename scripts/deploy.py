from scripts.helpful_scripts import get_account, get_contract, fund_with_link
from brownie import HappyHoliday, network, config
from brownie.convert.datatypes import HexString
from brownie.convert import to_bytes
import time
from web3 import Web3


def main():
    account = get_account()
    happy_holiday = HappyHoliday.deploy(
        get_contract("link_token").address,
        get_contract("oracle").address,
        Web3.toHex(text=config["networks"][network.show_active()]["rain_job"]),
        Web3.toHex(text=config["networks"][network.show_active()]["location_job"]),
        config["networks"][network.show_active()]["fee"],
        {"from": account},
        publish_source=False,
    )
    print(f"Current location key is {happy_holiday.locationKey()}")
    key_url = "http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?apikey=QkYJm5wAyNcQj2hiGekh7ObX8YopTsb2&q=53.551085%2C9.993682"
    tx = happy_holiday.requestLocationKey(key_url, {"from": account})
    tx.wait(1)
    time.sleep(60)
    print(f"Current location key is {happy_holiday.locationKey()}")

    print(f"Current rain is {happy_holiday.rainPast24h()}")
    rain_url = "https://dataservice.accuweather.com/currentconditions/v1/328328?apikey=QkYJm5wAyNcQj2hiGekh7ObX8YopTsb2&details=true"
    tx = happy_holiday.requestRainPast24h(rain_url, {"from": account})
    tx.wait(1)
    time.sleep(60)
    print(f"Current rain is {happy_holiday.rainPast24h()}")
