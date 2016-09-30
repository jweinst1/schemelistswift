#scheme lists swift

Remember those cool functional lists from Scheme? With cdr and car functions? Now you can use an implementation of those in swift with this package!

##Installation

List the directory git url as a dependency in your `Package.swift` file in your swift package.

###Usage

The package implements the base of the scheme list as an enum with an indirect and end case. This allows for fast value retrieval, and takes advantage of swifts generic enums to allow the scheme list to store any type.

Several static functions, like pushing, indexing, length and more are included in the package to manipulate the scheme lists.