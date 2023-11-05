// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Web3SubClient {
    function subscribe() external;

    function unsubscribe() external;

    function verify() external view returns (bool);

    function web3subVersion() external view returns (string memory);
}

// Web3SubClient is the minimal interface that a client of web3sub needs to implement
