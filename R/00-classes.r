setOldClass("project_gutenberg_license")

setClass(
  Class="book",
  representation=representation(
    url="character",
    title="character",
    author="character",
    header="character",
    text="character",
    nlines="numeric",
    nwords="numeric",
    language="character",
    license="project_gutenberg_license"
  )
)

