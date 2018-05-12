library(staplr)
setwd()
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
