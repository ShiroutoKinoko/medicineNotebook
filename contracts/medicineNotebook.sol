// SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.16;

contract medicineNotebook {
    // globaly recorded items on this contract
    // - medicine code（GTIN-13)
    // - disease code
    // - hospital code
    // - population
    uint256[] public medicineCodesList;
    uint64[] public diseaseCodesList;
    uint256[] public hospitalcodesList;
    uint256 public population;

    // struct for record list
    struct RecordItem {
        uint256 recordTime; // Unit: second, epoch unix time
        uint8 age; // Unit: years oldnode --v
        uint8 weight; // Unit: kg
        uint8 height; // Unit: cm
        uint8 sex; // 0: men, 1: women
        uint256[] medicineCurrentTaking; // medicine currently taking
        mapping(uint256 => uint8) medicineToTakingQuantity; // medicine quantity when you take at once
        uint64[] diseaseCodes; // disease code you have
        uint256[] hospitalCodes; // hospital code you go to
    }

    // struct for each person
    struct Person {
        uint256 humanId; // ID number for each person
        uint8 lifeAndDeath; // life and death
        RecordItem[] records; // recorded items
    }
}
