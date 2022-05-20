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
        config["networks"][network.show_active()]["fee"],
        {"from": account},
        publish_source=False,
    )
    # print(f"Current location key is {happy_holiday.locationKey()}")
    # key_url = "http://dataservice.accuweather.com/locations/v1/cities/geoposition/search?apikey=QkYJm5wAyNcQj2hiGekh7ObX8YopTsb2&q=53.551085%2C9.993682"
    # tx = happy_holiday.requestLocationKey(key_url, {"from": account})
    # tx.wait(1)
    # time.sleep(60)
    # print(f"Current location key is {happy_holiday.locationKey()}")
    start_date = 1234
    end_date = 5678
    location_key = 328328
    insured_value = 10000000000000000
    premium = 100000000000000
    tx = happy_holiday.subscribePolicy(
        start_date,
        end_date,
        location_key,
        insured_value,
        premium,
        4,
        {"from": account, "value": premium},
    )
    tx.wait(1)
    my_policies = happy_holiday.getPoliciesByBuyer(account.address)
    print(f"My policies are {my_policies}")

    rain_url = "https://dataservice.accuweather.com/currentconditions/v1/170335?apikey=QkYJm5wAyNcQj2hiGekh7ObX8YopTsb2&details=true"
    tx = happy_holiday.requestRainPast24h(rain_url, my_policies[0], {"from": account})
    tx.wait(1)
    time.sleep(60)
    my_policies = happy_holiday.getPoliciesByBuyer(account.address)
    print(f"My policies are {my_policies}")
