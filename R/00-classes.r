setOldClass("project_gutenberg_license")

setClass(
  Class="book",
  representation=representation(
    text="character",
    title="character",
    author="character",
    language="character"
  ),
  prototype=prototype(
    text="",
    title="Unknown",
    author="Unknown",
    language="Unknown"
  )
)

setClass(
  Class="pgbook",
  representation=representation(
    url="character",
    header="character",
    license="project_gutenberg_license"
  ), 
  prototype=prototype(
    url="",
    header="",
    license=""
  ),
  contains="book"
)

