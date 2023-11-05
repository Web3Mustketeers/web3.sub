// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Web3SubClient {
    event NewSubscription(address wallet);
    event UnSubscribed(address wallet);

    function subscribe() external;

    function unsubscribe() external;

    function verify() external view returns (bool);
}

// Web3SubClient is the minimal interface that a client of web3sub needs to implement