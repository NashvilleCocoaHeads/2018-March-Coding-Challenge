# Nashville CocoaHeads Coding Challenge

_March 2018_

This month we discussed unit testing. Testing is a great way to ensure your app will behave correctly and will also help you write better code.

The challenge this month is to update the Nashville Za application to be more testable.

### [Challenge 1](https://github.com/NashvilleCocoaHeads/2018-March-Coding-Challenge/blob/9e7171a1619af3914aa0e74de9da9199fa142cc8/NashvilleZa/CLLocation%2BExtensions.swift#L19)

Update the tests on `milesString` to be more clear. 

Hint: You will likely need to update the `milesString` computed property extension on `CLLocationDistance` to make it more simple to test. It might even make sense to relocate the code that returns the miles string.

### [Challenge 2](https://github.com/NashvilleCocoaHeads/2018-March-Coding-Challenge/blob/9e7171a1619af3914aa0e74de9da9199fa142cc8/NashvilleZa/LocationDataPreparer.swift#L16)
Improve the code that pulls in the JSON data and write tests to ensure the data is being decoded properly.

Note: For more information on `Codable` see Blake Merryman's [talk from last month](http://bit.ly/2GJWjZs) about `Codable`.

## Contributing

- Open a PR with your solution in a folder with your name (e.g. `/blakemerryman`) at the root level.
