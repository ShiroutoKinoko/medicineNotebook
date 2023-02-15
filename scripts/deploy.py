from brownie import medicineNotebook
from scripts.helpful_scripts import get_account


def deploy():
    account = get_account()
    MedicineNotebook = medicineNotebook.deploy({"from": account})
    print(MedicineNotebook)


def main():
    deploy()
