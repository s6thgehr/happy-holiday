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
        Web3.toHex(text=config["networks"][network.show_active()]["total_rain_job"]),
        config["networks"][network.show_active()]["fee"],
        {"from": account},
        publish_source=False,
    )
    print(f"Current rain is {happy_holiday.rainPast24h()}")
    tx = happy_holiday.requestRainPast24h({"from": account})
    tx.wait(1)
    time.sleep(60)
    print(f"Current rain is {happy_holiday.rainPast24h()}")
