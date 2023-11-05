// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "contracts/web3sub.interface.sol";
import "contracts/web3subClient.interface.sol";

//TODO: replace with the of x version with Web3SubVersion
contract Web3SubClientx is Web3SubClient {
    string public constant web3subVersion = "vx.0.0"; //TODO: update the version

    constructor() {
        string memory initMsg = string.concat(
            "web3subVersionClient:",
            web3subVersion,
            Strings.toString(block.timestamp)
        );
        console.log(initMsg);
    }

    function subscribe() public {
        address user = msg.sender;
        // TODO: implement the logic
    }

    function unsubscribe() public {
        address user = msg.sender;
        // TODO: implement the logic
    }

    function verify() public view returns (bool verified) {
        address user = msg.sender;
        require(user != address(0x0), "invalid walletAddress");
        // TODO: implement the logic
        return verified;
    }
}
