#import "@preview/quick-maths:0.2.1": shorthands


#let doc_aufranc(title: none, fontsize: 11pt, bar: true, numbering: "1.1.", page-numbering: "I", doc) = {
  set heading(numbering: numbering)
  set text(font: "New Computer Modern", size: fontsize, lang: "fr")
  set linebreak(justify: true)
  set par(leading: 0.8em, spacing: 1.2em, justify: true, linebreaks: "optimized")
  show raw: set text(font: "New Computer Modern")
  show math.cases: it => {
    show math.frac: frc => {math.display(frc)}
    it
  }
  let hd = [
    #align(right)[
      #set text(11pt)
      #title
    ]
    #if bar {
      line(length: 100%, stroke: .5pt)
    }
  ]

  set page(
    paper: "a4",
    header: hd,
    numbering: page-numbering,
  )

  show smallcaps: h => text(size:1.1em)[#h]

  set grid(
    row-gutter: 1.5em,
    column-gutter: 2em,
  )

  show: shorthands.with(
    ($+-$, $plus.minus$),
    ($<==$, arrow.l.double),
    ($emptyset$, $diameter$),
    ($<=$, sym.lt.eq.slant),
    ($>=$, sym.gt.eq.slant),
    ($(->$, $arrow.r.hook$),
  )

  doc
}
