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

[% multi "src/hello-roc.roc" "out/hello-roc.out" %]

-   The `Str` after the colon tells us the type of the value
-   Roc cares a *lot* about types

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Numbers" %]

[% multi "src/number-3.roc" "out/number-3.out" %]

-   3 is a `Num *`
    -   `Num` is short for "number"
    -   `*` means this is a [%g wildcard_type "wildcard type" %]
-   Compatible with more specific numeric types `Int` and `Frac`

<!-- ---------------------------------------------------------------- -->
[% section_break class="topic" title="Variables" %]

-   Assigning a value to a name creates a variable
    -   The value of the expression is automatically echoed

[% multi "src/var-def.roc" "out/var-def.out" %]

-   But all "variables" are actually constants

[% single "src/var-redef.roc" %]
[% single "out/var-redef.out" %]

<!-- ---------------------------------------------------------------- -->
[% section_break class="aside" title="Appendices" %]

### Terms

[% glossary %]

### Acknowledgments

[% thanks %]

### Links

[% link_table %]

[% section_end %]
