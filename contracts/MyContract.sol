// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract MyContract {
    string public storedData;

    constructor(string memory _initialData){
        storedData = _initialData;
    }

    function setStoredData (string memory _newData) {
    storedData = _newData;
    }

    function getStoredData () public view returns (string memory) {
        return storedData;
    }


}
