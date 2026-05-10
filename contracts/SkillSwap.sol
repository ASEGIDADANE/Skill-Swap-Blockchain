// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title SkillSwap
/// @notice Campus skill exchange — list skills offered and skills wanted.
contract SkillSwap {
    // ========== Phase 2: State & events ==========

    struct Listing {
        address owner;
        string skillOffered;
        string skillWanted;
        bool active;
    }

    uint256 public listingCount;
    mapping(uint256 => Listing) private _listings;

    event ListingCreated(uint256 indexed id, address indexed owner);
    event ListingCancelled(uint256 indexed id, address indexed owner);

    modifier onlyListingOwner(uint256 id) {
        require(id < listingCount, "Invalid listing id");
        require(_listings[id].owner == msg.sender, "Not listing owner");
        _;
    }

    // ========== Phase 3: Core functions ==========

    /// @notice Create a new skill swap listing.
    /// @param skillOffered Skill you can teach.
    /// @param skillWanted Skill you want to learn.
    /// @return id The new listing id.
    function createListing(
        string calldata skillOffered,
        string calldata skillWanted
    ) external returns (uint256 id) {
        require(bytes(skillOffered).length > 0, "skillOffered required");
        require(bytes(skillWanted).length > 0, "skillWanted required");

        id = listingCount;
        _listings[id] = Listing({
            owner: msg.sender,
            skillOffered: skillOffered,
            skillWanted: skillWanted,
            active: true
        });
        listingCount++;

        emit ListingCreated(id, msg.sender);
    }

    /// @notice Read a listing by id.
    function getListing(
        uint256 id
    )
        external
        view
        returns (
            address owner,
            string memory skillOffered,
            string memory skillWanted,
            bool active
        )
    {
        require(id < listingCount, "Invalid listing id");
        Listing storage listing = _listings[id];
        return (
            listing.owner,
            listing.skillOffered,
            listing.skillWanted,
            listing.active
        );
    }

    /// @notice Deactivate a listing. Only the creator may cancel.
    function cancelListing(uint256 id) external onlyListingOwner(id) {
        require(_listings[id].active, "Already cancelled");
        _listings[id].active = false;
        emit ListingCancelled(id, msg.sender);
    }
}
