<!-- ---------------------------------------------------------------- -->
[% section_start class="aside" title="What This Is" %]

-   Notes and working examples that instructors can use to perform a lesson
    -   Do *not* expect novices with no prior [Roc][roc] experience to learn from them on their own
-   Musical analogy
    -   This is the chord changes and melody
    -   We expect instructors to create an arrangement and/or improvise while delivering
-   Please see [the license](./license/) for terms of use,
    the [Code of Conduct](./conduct/) for community standards,
    and [these guidelines](./contributing/) for notes on contributing
-   [Greg Wilson][wilson_greg] is a programmer, author, and educator based in Toronto

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Hello Roc" %]

-   Run `roc repl` at the command line
-   Character string evaluates to itself

[% inc src/interp-hello-roc.roc out/interp-hello-roc.out %]

-   The `Str` after the colon tells us the type of the value
-   Roc cares a *lot* about types

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Numbers" %]

[% inc src/interp-number-3.roc out/interp-number-3.out %]

-   3 is a `Num *`
    -   `Num` is short for "number"
    -   `*` means this is a [%g wildcard_type "wildcard type" %]
-   Compatible with more specific numeric types `Int` and `Frac`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Variables" %]

-   Assigning a value to a name creates a variable
    -   The value of the expression is automatically echoed

[% inc src/interp-var-def.roc out/interp-var-def.out %]

-   But all "variables" are actually constants

[% inc src/interp-var-redef.roc out/interp-var-redef.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Arithmetic" %]

[% inc src/interp-arithmetic.roc out/interp-arithmetic.out %]

-   Roc respects the usual precedence rules for arithmetic
-   Result is `Frac` because division creates a fractional number
    -   And `Num` combined with `Frac` is `Frac`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Functions" %]

[% inc src/interp-call-max.roc out/interp-call-max.out %]

-   Don't need parentheses…
-   …except to disambiguate

[% inc src/interp-call-max-add.roc out/interp-call-max-add.out %]

-   Consider:

[% inc src/interp-nested-func-call.roc out/interp-nested-func-call.out %]

-   Looks like we're passing `Num.max`, 3, and 5 as arguments to `Str.concat`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Interpolation" %]

-   Works as it does in most modern languages
    -   Your responsibility to convert interpolated values to text

[% inc src/interp-interpolation.roc out/interp-interpolation.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Defining Functions" %]

-   Use `\` followed by parameters (with no space after `\`)
-   Assign result to a name

[% inc src/interp-max3.roc out/interp-max3.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="First Application" %]

[% inc src/first-app.roc out/first-app.out %]

-   Downloads the `basic-cli` [%g platform "platform" %] the first time it runs
-   Uses the cached version after that
-   We'll go through the details but:
    -   Create an application called `first`
    -   Get the `basic-cli` platform as a package called `cli`
    -   Get `Stdout` (standard output) from that package
    -   Provide our `main` function to `cli`
    -   Define the `main` we're providing
-   Yeah, it feels a bit like Java's `public static void main`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Conditionals" %]

[% inc src/order-func.roc out/order-func.out %]

-   Note that `else if` is just an `if` inside an `else`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Naming" %]

[% inc src/order-func-3-bad-name.roc out/order-func-3-bad-name.out %]

-   Use [%g camel_case "camelCase" %] instead

[% inc src/order-func-3.roc out/order-func-3.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="aside" title="Tasks" %]

[% inc src/order-func-3-stdout.roc %]

-   Produces a page of error messages
-   Problem is that `Stdout.line` is a [%g task "task" %], not a function
-   We'll explore those later

<!-- ---------------------------------------------------------------- -->
[% section_break class="aside" title="Appendices" %]

### Terms

[% glossary %]

### Acknowledgments

[% thanks %]

### Links

[% link_table %]

[% section_end %]
