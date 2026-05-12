// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @notice Example from early Solidity courses (storage + setter/getter pattern).
/// @dev Course exercise — not used in production SkillSwap deployment.
contract SimpleStorage {
    uint256 private _favoriteNumber;

    event NumberUpdated(uint256 newNumber);

    function store(uint256 newNumber) external {
        _favoriteNumber = newNumber;
        emit NumberUpdated(newNumber);
    }

    function retrieve() external view returns (uint256) {
        return _favoriteNumber;
    }
}
