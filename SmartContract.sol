// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title SimpleMiniDApp - small contract for MG3012 assignment
/// @notice Provides read & write functions to store a number and a short message
contract SimpleMiniDApp {
    address public owner;
    uint256 private storedValue;
    string private storedMessage;

    event ValueChanged(address indexed changer, uint256 newValue);
    event MessageChanged(address indexed changer, string newMessage);

    constructor() {
        owner = msg.sender;
        storedValue = 0;
        storedMessage = "Hello Sepolia!";
    }

    // WRITE: set storedValue to a specific number
    function setValue(uint256 _value) public returns (bool) {
        storedValue = _value;
        emit ValueChanged(msg.sender, _value);
        return true;
    }

    // WRITE: increment storedValue by delta
    function increment(uint256 _delta) public returns (uint256) {
        storedValue += _delta;
        emit ValueChanged(msg.sender, storedValue);
        return storedValue;
    }

    // WRITE: set a short message
    function setMessage(string calldata _message) public returns (bool) {
        storedMessage = _message;
        emit MessageChanged(msg.sender, _message);
        return true;
    }

    // READ: get the current stored value
    function getValue() public view returns (uint256) {
        return storedValue;
    }

    // READ: get the current stored message
    function getMessage() public view returns (string memory) {
        return storedMessage;
    }

    // READ: return contract owner
    function getOwner() public view returns (address) {
        return owner;
    }
}
