// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Web3SubClient Interface
/// @notice This is the minimal interface that a client of Web3Sub needs to implement.
interface Web3SubClient {
    /// @dev Subscribes the calling address to the Web3Sub service.
    function subscribe() external;

    /// @dev Unsubscribes the calling address from the Web3Sub service.
    function unsubscribe() external;

    /// @dev Verifies if the calling address is currently subscribed to the Web3Sub service.
    /// @return true if the calling address is subscribed; otherwise, false.
    function verify() external view returns (bool);

    /// @dev Returns the version of the Web3Sub service being used by the client.
    /// @return A string representing the version of the Web3Sub service.
    function web3subVersion() external view returns (string memory);
}

/// Web3SubClient is the minimal interface that a client of Web3Sub needs to implement.
/// @author Hiro<laciferin@gmail.com>
/// @title Web3SubClient Interface
/// @notice This is the minimal Web3Sub interface that every Web3Sub client needs to implement.
/// @dev Make sure your Dapp implements this interface.
