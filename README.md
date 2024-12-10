# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates an example of an unhandled exception in asynchronous Dart code and its solution.  The `bug.dart` file contains code that fetches data from a network API.  The `try-catch` block handles potential exceptions during the network request, but it `rethrows` the exception. This means the exception needs to be explicitly handled by the caller.

The solution, shown in `bugSolution.dart`, demonstrates how to properly handle the re-thrown exception using a `try-catch` block in the calling function.

## How to Run

1. Clone this repository.
2. Run `bug.dart` and observe the unhandled exception.
3. Run `bugSolution.dart` to see the corrected handling of exceptions.