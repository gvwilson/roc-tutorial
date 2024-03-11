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

[% multi src/hello-roc.roc out/hello-roc.out %]

-   The `Str` after the colon tells us the type of the value
-   Roc cares a *lot* about types

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Numbers" %]

[% multi src/number-3.roc out/number-3.out %]

-   3 is a `Num *`
    -   `Num` is short for "number"
    -   `*` means this is a [%g wildcard_type "wildcard type" %]
-   Compatible with more specific numeric types `Int` and `Frac`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Variables" %]

-   Assigning a value to a name creates a variable
    -   The value of the expression is automatically echoed

[% multi src/var-def.roc out/var-def.out %]

-   But all "variables" are actually constants

[% multi src/var-redef.roc out/var-redef.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Arithmetic" %]

[% multi src/arithmetic.roc out/arithmetic.out %]

-   Roc respects the usual precedence rules for arithmetic
-   Result is `Frac` because division creates a fractional number
    -   And `Num` combined with `Frac` is `Frac`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Functions" %]

[% multi src/call-max.roc out/call-max.out %]

-   Don't need parentheses…
-   …except to disambiguate

[% multi src/call-max-add.roc out/call-max-add.out %]

-   Consider:

[% multi src/nested-func-call.roc out/nested-func-call.out %]

-   Looks like we're passing `Num.max`, 3, and 5 as arguments to `Str.concat`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Interpolation" %]

-   Works as it does in most modern languages
    -   Your responsibility to convert interpolated values to text

[% multi src/interpolation.roc out/interpolation.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Defining Functions" %]

-   Use `\` followed by parameters (with no space after `\`)
-   Assign result to a name

[% multi src/max3.roc out/max3.out %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="aside" title="Appendices" %]

### Terms

[% glossary %]

### Acknowledgments

[% thanks %]

### Links

[% link_table %]

[% section_end %]
