<div align="center">
 <h3 align="center">HELLO PACKAGE!</h3>
</div>
<br />

There are two types of Gno applications on GnoLand: Packages and Realms.

- Realms are Smart Contracts which expose Render function and have their own state. Realms are imported from `gno.land/r/...`
- Packages do not have Render function or state, they expose functions Realms or other Packages can import and use. Packages are imported from `gno.land/p/...`

In this challenge, you must write the Render function of the Solve realm to make the unit tests in `solve_test.gno` succeed! You **must** use the World function of the `hello` package in your solution.

Use `gnodev test r/solve --verbose` to run the tests.

Do not modify the tests or the hello package.
