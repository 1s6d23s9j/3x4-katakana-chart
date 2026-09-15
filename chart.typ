#let num_columns = 3
#let show_section_names = false
#let sections = (
  "Assembly"/*or Feature Flag*/: (
    ("ウ", "u"),
    ("ワ", "wa"),
    ("フ", "fu"),
    ("ス", "su"),
    ("ヌ", "nu"),
    ("メ", "me"),
    ("ノ", "no"),
  ),
  "It Hurts When I 🙂": (
    ("ツ", "tsu"),
    ("シ", "shi"),
    ("ン", "n"),
    ("ソ", "so"),
  ),
  "Hammer": (
    ("タ", "ta"),
    ("ケ", "ke"),
    ("ク", "ku"),
    ("カ", "ka"),
  ),
  "Mendel": (
    ("キ", "ki"),
    ("ヤ", "ya"),
    ("セ", "se"),
    ("ヒ", "hi"),
    ("モ", "mo"),
  ),
  "Fruitslice": (
    ("ネ", "ne"),
    ("オ", "o"),
    ("ホ", "ho"),
  ),
  "v-line": (
    ("ル", "ru"),
    ("レ", "re"), // Not sure
    ("リ", "ri"),
    ("サ", "sa"),
    ("ハ", "ha"),
  ),
  "Boxy": (
    ("ヨ", "yo"),
    ("ロ", "ro"),
    ("コ", "ko"),
  ),
  "Beam": (
    ("ユ", "yu"),
    ("ニ", "ni"),
    ("エ", "e"),
    ("ヱ", [#strike[we]]), // it is the most similar to ア while belonging to beam too
    ("ア", "a"), // don't know where the fuck to put this
  ),
  "Damwall": (
    ("チ", "chi"),
    ("ナ", "na"),
  ),
  "Misfit": (
    ("マ", "ma"),
    ("ム", "mu"),
    ("ミ", "mi"),
    ("ト", "to"),
    ("ヘ", "he"),
  ),
  "Hat": (
    ("ラ", "ra"),
    ("テ", "te"),
    ("イ", "i"),
  ),
  "Obsolete": (
    ("ヰ", "wi"),
    ("ヱ", "we"),
    ("ヲ", "wo"),
  ),
)

#set text(fill: black)
#set page(
  flipped: true,
  margin: 1.27cm,
  footer: [
    #set text(font: "Noto Sans", size: 10pt, fill: luma(150))
    `github.com/1s6d23s9j/3x4-katakana-chart/`
    #h(1fr)
    Optimised 3#sym.times\4 Katakana Chart. #datetime.today().display()
  ],
)

#show heading: set text(weight: "light", font: "Noto Sans", size: 14pt)

#let show_kana = char => {
  set text(font: "Source Han Sans JP", size: 28pt)
  char
}

#let show_romaji = romaji => {
  set text(font: "Noto Sans Mono", size: 20pt)
  romaji
}

#grid(
  columns: (1fr,) * num_columns,
  rows: 1fr,
  align: center + horizon,
  ..for (section_name, characters) in sections {
    (
      {
        if (show_section_names){
          [= #section_name]
        }
        table(
          stroke: (x, y) => (
            left: if x > 0 { 0.4pt + rgb("411E8F") },
          ),
          columns: characters.len(),
          ..for (kana, _) in characters {
            (
              show_kana(kana),
            )
          },
          ..for (_, romaji) in characters {
            (show_romaji(romaji),)
          }
        )
      },
    )
  },
)
