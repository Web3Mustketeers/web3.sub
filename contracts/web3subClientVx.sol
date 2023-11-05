// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "contracts/web3sub.interface.sol";
import "contracts/web3subClient.interface.sol";

//TODO: replace with the of web3sub version
contract Web3SubClientVx is Web3SubClient {
    string public web3subVersion = string.concat("v", "x.0.0"); //TODO: update the version

    constructor() {
        string memory initMsg = string.concat(
            "init:",
            version,
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
        require(user != address(0x0), "invalid contract address");
        require(user != address(0x0), "invalid walletAddress");
        // TODO: implement the logic
        return verified;
    }
}