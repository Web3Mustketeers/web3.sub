// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "../web3sub.interface.sol";

contract V1 is Web3Sub {
    string public version; //TODO: update the version string

    //subscriptions mappings
    mapping(address => mapping(address => bool)) private Subscriptions;

    constructor(string memory _version) {
        // TODO: make it upgradeable later
        string memory initMsg = string.concat(
            "init:",
            version,
            Strings.toString(block.timestamp)
        );
        version = _version;
        console.log(initMsg);
    }

    function subscribe( address wallet) external {
        require(wallet != address(0x0), "invalid wallet address");
        Subscriptions[msg.sender][wallet] = true;
        emit NewSubscription(msg.sender, wallet);
    }

    function unsubscribe( address wallet) external {
        require(wallet != address(0x0), "invalid wallet address");
        Subscriptions[msg.sender][wallet] = false;
        emit UnSubscribed(msg.sender, wallet);
    }



    function verify(
        address contractAddress,
        address wallet
    ) external view returns (bool status) {
        require(contractAddress != address(0x0), "invalid contract address");
        require(wallet != address(0x0), "invalid walletAddress");

        // TODO: implement the logic
        status =  Subscriptions[contractAddress][wallet];
    }
}
