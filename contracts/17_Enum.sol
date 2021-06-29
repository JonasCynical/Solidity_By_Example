// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // delete resets the enum to it's first value, 0
    function reset() public {
        delete status;
    }
    
    // You can update to a specific enum like this
    function ship() public {
        require(status == Status.Pending);
        status = Status.Shipped;
    }
    
    // You can update to a specific enum like this
    function acceptDelivery() public {
        require(status == Status.Shipped);
        status = Status.Accepted;
    }
    
    // You can update to a specific enum like this
    function rejectDelivery() public {
        require(status == Status.Shipped);
        status = Status.Rejected;
    }
    
    // You can update to a specific enum like this
    function cancel() public {
        require(status == Status.Pending);
        status = Status.Canceled;
    }

}
