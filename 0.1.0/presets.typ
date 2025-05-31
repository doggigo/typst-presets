#import "@preview/quick-maths:0.2.1" : shorthands


#let doc_aufranc(title: none, fontsize: 11pt,doc) = {
  set text(font: "New Computer Modern", size: fontsize, lang: "fr")
  set linebreak(justify: true)
  set par(leading: 0.8em, spacing: 1.2em, justify: true, linebreaks: "optimized")
  show raw: set text(font: "New Computer Modern")
  set page(
    paper: "a4",
    header: align(right)[
      #set text(11pt)
      #title
      #line(length:100%, stroke: 1pt)
    ],
    numbering: "I"
  )

  set grid(
    row-gutter: 1.5em,
    column-gutter: 2em,
  )

  show: shorthands.with(
    ($emptyset$, $diameter$),
    ($<=$,sym.lt.eq.slant),
    ($>=$,sym.gt.eq.slant),
    ($(->$, $arrow.r.hook$)
)

  doc
}