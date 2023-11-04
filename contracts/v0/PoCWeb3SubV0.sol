// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "contracts/web3sub.interface.sol";

contract PoCWeb3SubV0 is Web3Sub {
    string public version = string.concat("v", "0.0.0");
    mapping(address => bool) public subscribers;

    constructor() {
        string memory initMsg = string.concat(
            "init:",
            version,
            Strings.toString(block.timestamp)
        );
        console.log(initMsg);
    }

    function subscribe(address wallet) external {
        require(!subscribers[wallet], "Wallet is already subscribed");
        subscribers[wallet] = true;
        emit NewSubscription(wallet);
    }

    function unsubscribe(address wallet) external {
        subscribers[wallet] = false;
        emit UnSubscribed(wallet);
    }

    function verify(address wallet) external view returns (bool verified) {
        require(msg.sender != address(0x0), "invalid contract address");
        require(wallet != address(0x0), "invalid walletAddress");

        verified = subscribers[wallet];
        return verified;
    }
}
/*
Dapp PoC: contract for sub, unsub and verify
#FIXME: integrate our contract
*/
