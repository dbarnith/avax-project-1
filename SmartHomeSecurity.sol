// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleHomeSecurity {

    address public owner;
    bool public insideHome;
    uint256 public pin;

    constructor() {
        owner = msg.sender;
        pin = 1234;
        insideHome = false;
    }

    function changePin(uint256 key, uint256 newKey) public{
        assert(key==pin);
        pin = newKey;
    }

    function enterHome(uint256 key) public {

        require(msg.sender==owner,"you are not the owner");
        
        if( pin!=key )
            revert("pin doesn't match");

        assert(!insideHome);
        insideHome = true;
    }

    function leaveHome() public{
        assert(insideHome);
        insideHome = false;
    }



}
