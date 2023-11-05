// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Web3SubClient {
    function subscribe() public;

    function unsubscribe() public;

    function verify() public view returns (bool);
}

// Web3SubClient is the minimal interface that a client of web3sub needs to implement
