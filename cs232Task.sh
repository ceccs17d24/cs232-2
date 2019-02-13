curl -fLo "result.pdf" "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=G9JU3qvNaL1Bbd97S4x8QAIqBvHCL9A4lNbTXzgGtuc%3D"
pdftotext -nopgbrk result.pdf
grep --no-group-separator -A3 'CHN17CS' result.txt > result_CS_Only.txt
tr '\n' ' ' < result_CS_Only.txt > result_no_newline
sed 's/\ CHN/\nCHN/g' result_no_newline > result_one_per_line
