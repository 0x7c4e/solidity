// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Enum {
    // enums allow you express moultiple choices
    // expressing ultiple order status
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    }

    // use the enum as a state variable
    Status public status;

    // we can also use it in a struct
    struct Order {
        address buyer;
        Status status;
    }

    // an array of orders
    Order[] public orders;

    // return an enum from a function
    function get() external   view returns(Status) {
        return status;
    }

    // pass enum to a function
    function set(Status _status) external  {
        status = _status;
    }

    function ship() external {
        status = Status.Shipped;
    }

    function reset() external {
        delete status;
    }

    // NB: the default status of this enum will be the first item 'None'

}