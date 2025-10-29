// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Mapping{
    mapping(uint => address) public idToAddress;
    mapping(address => address) public swapPair;

    struct Student{
        uint id;
        string name;
    }
    mapping(uint => Student) public a;

    function writeMap(uint _key, address _value) public{
        idToAddress[_key] = _value;
    }
}