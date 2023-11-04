// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "contracts/web3sub.interface.sol";

contract V1 is Web3Sub {
    string public version = string.concat("v", "1");

    constructor() {
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

    function verify(address wallet) external view returns (bool verified) {
        require(msg.sender != address(0x0), "invalid contract address");
        require(wallet != address(0x0), "invalid walletAddress");

        // TODO: implement the logic

        return verified;
    }
}

/*
Leverage NFTs or SBTs instead of mapping in v0
*/
