library(rvest)

edxsubjects <- read_html("https://web.archive.org/web/20200801210910/https://www.edx.org/subjects")
subjectshtml<-html_nodes(edxsubjects, ".mb-4+ .mb-4 .align-items-center")
subjecttext<-html_text(subjectshtml)
print(subjecttext)
