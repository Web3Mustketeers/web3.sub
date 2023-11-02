// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract V1 {
    uint public unlockTime;
    address payable public owner;

    event NewSubscription();
    event UnSubscribed();

    constructor() {
        // TODO: make it upgradeable later
    }

    function subscribe(address contractAddress, address wallet) external {
        emit NewSubscription();
    }

    function unsubscribe(address contractAddress, address wallet) external {
        emit UnSubscribed();
    }

    function verify(
        address contractAddress,
        address wallet
    ) external view returns (bool) {
        return true;
    }
}
