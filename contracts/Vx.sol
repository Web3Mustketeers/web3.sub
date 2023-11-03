// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./web3sub.interface.sol";

contract Vx is Web3Sub {
    string public version = "v0.0.0"; //TODO: update the version string

    constructor() {
        // TODO: make it upgradeable later
        string memory initMsg = string.concat(
            "init:",
            version,
            Strings.toString(block.timestamp)
        );
        console.log(initMsg);
    }

    function subscribe(address wallet) external {
        // TODO: implement the logic
        emit NewSubscription(wallet);
    }

    function unsubscribe(address wallet) external {
        // TODO: implement the logic
        emit UnSubscribed(wallet);
    }

    function verify(address wallet) external view returns (bool) {
        require(msg.sender != address(0x0), "invalid contract address");
        require(wallet != address(0x0), "invalid walletAddress");

        // TODO: implement the logic

        return true;
    }
}
