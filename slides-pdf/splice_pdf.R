library(staplr)
setwd("slides-pdf")
# github
remove_pages(c(1:24, 26:29), input_filepath = "2-packages.pdf",
             output_filepath = "use_github.pdf")
remove_pages(c(1:28), input_filepath = "2-packages.pdf",
             output_filepath = "license_page.pdf")
remove_pages(c(2:13), input_filepath = "2b-github.pdf",
             output_filepath = "title_page.pdf")
remove_pages(c(1:2, 13), input_filepath = "2b-github.pdf",
             output_filepath = "content.pdf")
staple_pdf(input_files = c("title_page.pdf", "use_github.pdf",
                           "content.pdf", "license_page.pdf"),
           output_filepath = "../eRum2018/2b-github.pdf")
# tests
remove_pages(c(21:51), input_filepath = "3b-test.pdf",
             output_filepath = "part1.pdf")
remove_pages(c(1:24), input_filepath = "3b-test.pdf",
             output_filepath = "part2.pdf")
remove_pages(c(1:20, 25:63), input_filepath = "3-test.pdf",
             output_filepath = "why_test.pdf")
staple_pdf(input_files = c("part1.pdf", "why_test.pdf", "part2.pdf"),
             output_filepath = "../eRum2018/3-test.pdf")
