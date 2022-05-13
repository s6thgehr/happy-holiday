from scripts.helpful_scripts import get_account, get_contract, fund_with_link
from brownie import HappyHoliday, network, config
from brownie.convert.datatypes import HexString
from brownie.convert import to_bytes
import time
from web3 import Web3


def main():
    account = get_account()
    happy_holiday = HappyHoliday.deploy(
        {"from": account},
        publish_source=False,
    )
    print(f"Current rain is {happy_holiday.currentPercipitation()}")
    tx = happy_holiday.requestPercipitation({"from": account})
    tx.wait(1)
    time.sleep(60)
    print(f"Current rain is {happy_holiday.currentPercipitation()}")
