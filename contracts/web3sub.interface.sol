pragma solidity ^0.8.9;

interface Web3Sub {
    event NewSubscription(address contractAddress, address wallet);
    event UnSubscribed(address contractAddress, address wallet);

    function subscribe(address contractAddress, address wallet) external;

    function unsubscribe(address contractAddress, address wallet) external;

    function verify(
        address contractAddress,
        address wallet
    ) external view returns (bool);

    function version() external view returns (string memory);
}
