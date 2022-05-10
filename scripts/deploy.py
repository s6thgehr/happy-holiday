from brownie import accounts, HappyHoliday


def main():
    account = accounts[0]
    happy_holiday = HappyHoliday.deploy({"from": account})
    print(f"Premium: {happy_holiday.premium()}")
    happy_holiday.setInsuredValue(700, {"from": account})
    print(f"Premium: {happy_holiday.premium()}")
